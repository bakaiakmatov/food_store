import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_store_test/common_widgets/custom_elevated_button.dart';
import 'package:food_store_test/modules/subcategory/presentation/provider/subcategory_provider.dart';
import 'package:food_store_test/modules/subcategory/presentation/ui/widgets/card_button_widget.dart';
import 'package:food_store_test/resources/app_colors.dart';
import 'package:food_store_test/resources/app_styles.dart';
import 'package:provider/provider.dart';

class ProductDialogWidget extends StatelessWidget {
  final int price;
  final int weight;
  final String name;
  final String imageUrl;
  final String description;

  const ProductDialogWidget({
    super.key,
    required this.name,
    required this.price,
    required this.weight,
    required this.imageUrl,
    required this.description,
  });
  @override
  Widget build(BuildContext context) {
    return Consumer<SubcategoryProvider>(
      builder: (context, provider, _) => AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(15.r),
          ),
        ),
        content: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              width: double.infinity,
              child: Stack(
                children: [
                  DecoratedBox(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10.r),
                        ),
                        color: AppColors.pampasColor),
                    child: Center(
                      child: Padding(
                        padding: EdgeInsets.only(top: 14.h),
                        child: CachedNetworkImage(
                          imageUrl: imageUrl,
                          height: 200.h,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    right: 8.w,
                    top: 8.h,
                    child: Row(
                      children: [
                        CardButtonWidget(
                          icon: Icons.favorite_border_outlined,
                          onTap: () {},
                        ),
                        SizedBox(width: 8.w),
                        CardButtonWidget(
                          icon: Icons.close,
                          onTap: () {
                            Navigator.pop(context);
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 16.h),
            Text(
              name,
              style: AppStyles.text16w500,
            ),
            SizedBox(height: 8.h),
            Row(
              children: [
                Text(
                  '$price₽',
                  style: AppStyles.text14w400,
                ),
                SizedBox(width: 8.w),
                Text('$weightг',
                    style: AppStyles.text14w400
                        .copyWith(color: AppColors.dustyGrayColor)),
              ],
            ),
            SizedBox(height: 8.h),
            Text(
              description,
              style: AppStyles.text14w400.copyWith(
                color: Colors.black.withOpacity(0.7),
              ),
            ),
            SizedBox(height: 16.h),
            CustomElevatedButton(
              text: 'Добавить в корзину',
              onPressed: () {
                provider.addToCart(name, price, weight, imageUrl);

                Navigator.pop(context);
                ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text(provider.dishText ?? '')));
              },
            )
          ],
        ),
      ),
    );
  }
}
