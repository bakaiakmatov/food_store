import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_store_test/resources/app_colors.dart';
import 'package:food_store_test/resources/app_styles.dart';

class CustomElevatedButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final double? width;
  final String text;
  final Color? textColor;
  final Color? backgroundColor;
  final double? height;
  final bool isLoading;

  const CustomElevatedButton({
    super.key,
    this.onPressed,
    required this.text,
    this.textColor,
    this.backgroundColor,
    this.height,
    this.width,
    this.isLoading = false,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? double.infinity,
      height: height ?? 48.h,
      child: ElevatedButton(
        onPressed: isLoading ? null : onPressed,
        style: ButtonStyle(
          backgroundColor: MaterialStatePropertyAll(
              backgroundColor ?? AppColors.royalBlueColor),
        ),
        child: isLoading
            ? Padding(
                padding: EdgeInsets.symmetric(vertical: 16.0.h),
                child: const AspectRatio(
                  aspectRatio: 1,
                  child: CircularProgressIndicator.adaptive(),
                ),
              )
            : Text(
                text,
                style: AppStyles.text16w500
                    .copyWith(color: textColor ?? AppColors.whiteColor),
              ),
      ),
    );
  }
}
