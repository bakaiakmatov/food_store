import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_store_test/resources/app_colors.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  final Widget? leading;
  final Widget? title;
  final List<Widget>? actions;
  final bool? isLeadingWidget;
  @override
  Size get preferredSize => Size.fromHeight(58.h);

  const CustomAppbar({
    Key? key,
    this.leading,
    this.title,
    this.actions,
    this.isLeadingWidget,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      centerTitle: true,
      leadingWidth: leading != null ? double.infinity : null,
      leading: leading ??
          InkWell(
            borderRadius: BorderRadius.all(
              Radius.circular(64.r),
            ),
            onTap: () => Navigator.pop(context),
            child: const Icon(
              Icons.arrow_back_ios,
              color: AppColors.blackColor,
            ),
          ),
      title: title,
      actions: actions,
    );
  }
}
