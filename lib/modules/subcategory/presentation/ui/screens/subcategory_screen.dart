import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_store_test/common_widgets/custom_appbar.dart';
import 'package:food_store_test/modules/category/presentation/res/category_res.dart';
import 'package:food_store_test/modules/subcategory/presentation/provider/subcategory_provider.dart';
import 'package:food_store_test/modules/subcategory/presentation/res/subcategory_res.dart';
import 'package:food_store_test/modules/subcategory/presentation/ui/widgets/dish_card_widget.dart';
import 'package:food_store_test/modules/subcategory/presentation/ui/widgets/product_dialog_widget.dart';
import 'package:food_store_test/modules/subcategory/presentation/ui/widgets/teg_widget.dart';
import 'package:food_store_test/resources/app_colors.dart';
import 'package:food_store_test/resources/app_styles.dart';
import 'package:provider/provider.dart';

class SubcategoryScreen extends StatelessWidget {
  final String categoryName;
  const SubcategoryScreen({
    super.key,
    required this.categoryName,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
        title: Text(
          categoryName,
          style: AppStyles.text18w500.copyWith(color: AppColors.blackColor),
        ),
        actions: [
          const CircleAvatar(
            backgroundImage:
                CachedNetworkImageProvider(CategoryRes.userAvatarUrl),
            backgroundColor: Colors.transparent,
          ),
          SizedBox(width: 16.w),
        ],
      ),
      body: Consumer<SubcategoryProvider>(
        builder: (context, provider, _) => provider.isLoading
            ? const Center(
                child: CircularProgressIndicator.adaptive(),
              )
            : Scaffold(
                body: SingleChildScrollView(
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 16.w),
                        child: Row(
                            children: SubcategoryRes.tegs
                                .map(
                                  (e) => Padding(
                                    padding: EdgeInsets.only(right: 8.w),
                                    child: InkWell(
                                      onTap: () => provider.changeTag(e),
                                      child: TegWidget(
                                        text: e,
                                        backgroundColor: provider.name == e
                                            ? AppColors.royalBlueColor
                                            : AppColors.pampasColor,
                                        textColor: provider.name == e
                                            ? AppColors.whiteColor
                                            : AppColors.blackColor,
                                      ),
                                    ),
                                  ),
                                )
                                .toList()),
                      ),
                      GridView.count(
                        primary: false,
                        padding: const EdgeInsets.all(16),
                        crossAxisSpacing: 12,
                        crossAxisCount: 3,
                        shrinkWrap: true,
                        childAspectRatio: 3.1 / 4,
                        children: provider.dishesData!.dishes!
                            .where(
                          (element) => element.tegs!.contains(provider.name),
                        )
                            .map(
                          (e) {
                            return InkWell(
                              borderRadius: BorderRadius.all(
                                Radius.circular(10.r),
                              ),
                              onTap: () {
                                showDialog<void>(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return ProductDialogWidget(
                                      name: e.name ?? '',
                                      price: e.price ?? 0,
                                      weight: e.weight ?? 0,
                                      imageUrl: e.imageUrl ?? '',
                                      description: e.description ?? '',
                                    );
                                  },
                                );
                              },
                              child: DishCardWidget(
                                name: e.name ?? '',
                                imageUrl: e.imageUrl ?? '',
                              ),
                            );
                          },
                        ).toList(),
                      )
                    ],
                  ),
                ),
              ),
      ),
    );
  }
}
