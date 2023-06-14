import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_store_test/resources/app_colors.dart';

class AppThemes {
  ThemeData get appTheme {
    final appTheme = ThemeData.light().copyWith();
    return ThemeData(
      appBarTheme: appTheme.appBarTheme.copyWith(
        backgroundColor: AppColors.whiteColor,
        elevation: 0,
      ),
      scaffoldBackgroundColor: AppColors.whiteColor,
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0.r),
          )),
          backgroundColor:
              MaterialStateProperty.all<Color?>(AppColors.royalBlueColor),
        ),
      ),
    );
  }
}
