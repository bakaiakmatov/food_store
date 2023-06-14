import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:food_store_test/resources/app_styles.dart';

/// [CategoryCardWidget] виджет, карточка для категории
class CategoryCardWidget extends StatelessWidget {
  final String title;
  final String image;
  final VoidCallback onTap;
  const CategoryCardWidget({
    super.key,
    required this.title,
    required this.onTap,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: 8.h,
        horizontal: 16.w,
      ),
      child: InkWell(
        borderRadius: BorderRadius.all(
          Radius.circular(10.r),
        ),
        onTap: onTap,
        child: Stack(
          children: [
            CachedNetworkImage(
              imageUrl: image,
              placeholder: (context, url) => SizedBox(
                  height: 8.h,
                  width: 8.w,
                  child: const CircularProgressIndicator.adaptive()),
              errorWidget: (context, url, error) => const Icon(Icons.error),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                title,
                style: AppStyles.text20w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
