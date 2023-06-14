import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_store_test/common_widgets/custom_elevated_button.dart';
import 'package:food_store_test/modules/category/presentation/res/category_res.dart';
import 'package:flutter/material.dart';
import 'package:food_store_test/resources/app_styles.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Text(
                'Персональный аккаунт',
                style: AppStyles.text18w500,
              ),
              SizedBox(height: 64.h),
              Center(
                child: SizedBox(
                  height: 132.h,
                  width: 132.h,
                  child: const CircleAvatar(
                    backgroundImage: CachedNetworkImageProvider(
                      CategoryRes.userAvatarUrl,
                    ),
                    backgroundColor: Colors.transparent,
                  ),
                ),
              ),
              SizedBox(height: 32.h),
              Text(
                'Elon Reeve Musk',
                style: AppStyles.text18w500,
              ),
              SizedBox(height: 32.h),
              ListTile(
                leading: const Text('История заказов'),
                trailing: const Icon(Icons.arrow_forward_ios_outlined),
                onTap: () {},
              ),
              const Divider(),
              ListTile(
                leading: const Text('Мои заказы'),
                trailing: const Icon(Icons.arrow_forward_ios_outlined),
                onTap: () {},
              ),
              const Divider(),
              ListTile(
                leading: const Text('Личные данные'),
                trailing: const Icon(Icons.arrow_forward_ios_outlined),
                onTap: () {},
              ),
              const Divider(),
              const Spacer(),
              CustomElevatedButton(
                text: 'Выйти из аккауна',
                onPressed: () {},
              )
            ],
          ),
        ),
      ),
    );
  }
}
