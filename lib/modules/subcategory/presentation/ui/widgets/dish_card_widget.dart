import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_store_test/resources/app_colors.dart';
import 'package:food_store_test/resources/app_styles.dart';

class DishCardWidget extends StatelessWidget {
  final String name;
  final String imageUrl;
  const DishCardWidget({
    super.key,
    required this.name,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        DecoratedBox(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(10.r),
              ),
              color: AppColors.pampasColor),
          child: Center(
            child: Padding(
              padding: EdgeInsets.only(top: 14.h, bottom: 8.h),
              child: CachedNetworkImage(
                height: 80.h,
                imageUrl: imageUrl,
                placeholder: (context, url) => SizedBox(
                    height: 8.h,
                    width: 8.w,
                    child: const CircularProgressIndicator.adaptive()),
                errorWidget: (context, url, error) => const Icon(Icons.error),
              ),
            ),
          ),
        ),
        SizedBox(height: 4.h),
        Flexible(
          child: Text(
            name,
            style: AppStyles.text14w400,
            textAlign: TextAlign.start,
          ),
        )
      ],
    );
  }
}
