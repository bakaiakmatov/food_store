import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_store_test/common_widgets/custom_appbar.dart';
import 'package:food_store_test/common_widgets/custom_elevated_button.dart';
import 'package:food_store_test/modules/basket/presentation/widgets/basket_card_widget.dart';
import 'package:food_store_test/modules/category/presentation/res/category_res.dart';
import 'package:food_store_test/modules/category/presentation/widgets/user_location_widget.dart';
import 'package:food_store_test/modules/subcategory/presentation/provider/subcategory_provider.dart';
import 'package:food_store_test/resources/app_styles.dart';
import 'package:provider/provider.dart';

class BasketScreen extends StatefulWidget {
  const BasketScreen({super.key});

  @override
  State<BasketScreen> createState() => _BasketScreenState();
}

class _BasketScreenState extends State<BasketScreen> {
  @override
  Widget build(BuildContext context) {
    return Consumer<SubcategoryProvider>(
      builder: (context, provider, _) => Scaffold(
        appBar: CustomAppbar(
          leading: const UserLocationWidget(),
          actions: [
            const CircleAvatar(
              backgroundImage: CachedNetworkImageProvider(
                CategoryRes.userAvatarUrl,
              ),
              backgroundColor: Colors.transparent,
            ),
            SizedBox(width: 16.w),
          ],
        ),
        body: provider.cartItems.isNotEmpty
            ? Stack(
                children: [
                  ListView.builder(
                    physics: const AlwaysScrollableScrollPhysics(),
                    itemCount: provider.cartItems.length,
                    itemBuilder: (context, index) {
                      final dish = provider.cartItems[index];
                      return BasketCardWidget(
                        name: dish.name ?? '',
                        imageUrl: dish.imageUrl ?? '',
                        price: dish.price ?? 0,
                        weight: dish.weight ?? 0,
                        onDelete: () => provider.removeCartItem(dish),
                      );
                    },
                  ),
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.w),
                      child: CustomElevatedButton(
                        text: 'Оплатить ${provider.cartItems.fold(
                          0,
                          (sum, dish) => sum + (dish.price ?? 0),
                        )}₽',
                        onPressed: () {},
                      ),
                    ),
                  ),
                ],
              )
            : Center(
                child: Text(
                  'Корзина пуста',
                  style: AppStyles.text14w400,
                ),
              ),
      ),
    );
  }
}
