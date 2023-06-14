import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_store_test/resources/app_colors.dart';
import 'package:food_store_test/resources/app_icons.dart';
import 'package:food_store_test/resources/app_styles.dart';
import 'package:intl/intl.dart';

class UserLocationWidget extends StatelessWidget {
  const UserLocationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 4.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(width: 16.w),
          SvgPicture.asset(
            AppIcons.locationIcon,
            height: 28,
          ),
          SizedBox(width: 4.w),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Санкт-Петербург',
                style:
                    AppStyles.text18w500.copyWith(color: AppColors.blackColor),
              ),
              SizedBox(height: 4.w),
              Text(
                DateFormat('dd.MM.yyyy').format(DateTime.now()),
                style: AppStyles.text14w400
                    .copyWith(color: AppColors.dustyGrayColor),
              )
            ],
          ),
        ],
      ),
    );
  }
}
