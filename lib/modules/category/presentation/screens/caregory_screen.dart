import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_store_test/common_widgets/custom_appbar.dart';
import 'package:food_store_test/modules/category/presentation/provider/category_provider.dart';
import 'package:food_store_test/modules/category/presentation/res/category_res.dart';
import 'package:food_store_test/modules/category/presentation/widgets/category_card_widget.dart';
import 'package:food_store_test/modules/category/presentation/widgets/user_location_widget.dart';
import 'package:food_store_test/modules/subcategory/presentation/ui/screens/subcategory_screen.dart';
import 'package:provider/provider.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<CategoryProvider>(
      builder: (context, provider, _) => provider.isLoading
          ? const Center(
              child: CircularProgressIndicator.adaptive(),
            )
          : Scaffold(
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
              body: SafeArea(
                child: ListView.builder(
                  itemCount: provider.categoriesData!.categories!.length,
                  itemBuilder: (context, index) {
                    final item = provider.categoriesData!.categories?[index];
                    return CategoryCardWidget(
                      title: item?.name ?? '',
                      image: item?.imageUrl ?? '',
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => SubcategoryScreen(
                              categoryName: item?.name ?? '',
                            ),
                          ),
                        );
                      },
                    );
                  },
                ),
              ),
            ),
    );
  }
}
