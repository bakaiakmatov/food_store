import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_store_test/resources/app_styles.dart';

class TegWidget extends StatelessWidget {
  final Color backgroundColor;
  final Color textColor;
  final String text;
  const TegWidget({
    super.key,
    required this.backgroundColor,
    required this.textColor,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.all(Radius.circular(10.r))),
      child: Padding(
        padding: EdgeInsets.symmetric(
          vertical: 10.h,
          horizontal: 16.w,
        ),
        child: Text(
          text,
          style: AppStyles.text14w400.copyWith(color: textColor),
        ),
      ),
    );
  }
}
