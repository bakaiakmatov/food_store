import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_store_test/resources/app_colors.dart';
import 'package:food_store_test/resources/app_styles.dart';

class BasketCardWidget extends StatefulWidget {
  final String name;
  final int price;
  final int weight;
  final String imageUrl;
  final VoidCallback onDelete;

  const BasketCardWidget({
    super.key,
    required this.name,
    required this.price,
    required this.weight,
    required this.imageUrl,
    required this.onDelete,
  });

  @override
  State<BasketCardWidget> createState() => _BasketCardWidgetState();
}

class _BasketCardWidgetState extends State<BasketCardWidget> {
  int count = 1;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: 16.h,
        left: 16.w,
        right: 16.w,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: 62.w,
            height: 62.h,
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: AppColors.desertStormColor,
                borderRadius: BorderRadius.all(
                  Radius.circular(10.r),
                ),
              ),
              child: SizedBox(
                height: 42.h,
                child: Padding(
                  padding: const EdgeInsets.all(4.0).copyWith(top: 4),
                  child: CachedNetworkImage(
                    imageUrl: widget.imageUrl,
                    placeholder: (context, url) =>
                        const CircularProgressIndicator.adaptive(),
                    errorWidget: (context, url, error) =>
                        const Icon(Icons.error),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(width: 8.w),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.name,
                style: AppStyles.text16w500,
              ),
              SizedBox(height: 4.h),
              Row(
                children: [
                  Text(
                    '${widget.price}₽',
                    style: AppStyles.text14w400,
                  ),
                  SizedBox(width: 8.w),
                  Text(
                    '${widget.weight}г',
                    style: AppStyles.text14w400
                        .copyWith(color: AppColors.dustyGrayColor),
                  ),
                ],
              ),
            ],
          ),
          const Spacer(),
          SizedBox(
            height: 38.h,
            width: 100.w,
            child: DecoratedBox(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10.r),
                  ),
                  color: AppColors.desertStormColor),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 4.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          count++;
                        });
                      },
                      splashColor: AppColors.royalBlueColor,
                      child: const Icon(Icons.add),
                    ),
                    Text(
                      '$count',
                      style: AppStyles.text14w400,
                    ),
                    InkWell(
                      onTap: count <= 1
                          ? widget.onDelete
                          : () {
                              count--;
                              setState(() {});
                            },
                      splashColor: AppColors.royalBlueColor,
                      child: const Icon(Icons.remove_outlined),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
