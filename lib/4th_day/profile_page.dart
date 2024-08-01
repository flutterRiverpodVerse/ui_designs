import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ui_designs/core/constants/app_colors.dart';
import 'package:ui_designs/core/constants/app_constants.dart';

import '../core/widgets/custom_alert_dialog_box.dart';
import 'widgets/profile_menu_widget.dart';

class ProfilePage extends HookConsumerWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isDarkMode = AppConstants.isDarkMode(context: context);
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Profile',
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 15.w,
            vertical: 10.h,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 1.sw,
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 70.r,
                      backgroundColor: AppColors.grey,
                      child: Icon(
                        Icons.person,
                        size: 100.r,
                        color: AppColors.white,
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "Change profile photo",
                        style:
                            Theme.of(context).textTheme.headlineLarge!.copyWith(
                                  fontSize: 16.sp,
                                  color: isDarkMode
                                      ? AppColors.secondaryColor
                                      : AppColors.primaryColor,
                                  fontWeight: FontWeight.bold,
                                  decoration: TextDecoration.underline,
                                  decorationColor: isDarkMode
                                      ? AppColors.secondaryColor
                                      : AppColors.primaryColor,
                                ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              const Divider(),
              SizedBox(
                height: 10.h,
              ),
              Text(
                "Profile Info",
                style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                      fontSize: 16.sp,
                      color: isDarkMode
                          ? AppColors.secondaryColor
                          : AppColors.primaryColor,
                      fontWeight: FontWeight.bold,
                    ),
              ),
              SizedBox(
                height: 15.h,
              ),
              ProfileMenuWidget(
                title: "Name",
                value: "Stan",
                onTap: () {},
              ),
              ProfileMenuWidget(
                title: "Username",
                value: "stan#123",
                onTap: () {},
              ),
              SizedBox(
                height: 10.h,
              ),
              const Divider(),
              SizedBox(
                height: 10.h,
              ),
              Text(
                "Personal Info",
                style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                      fontSize: 16.sp,
                      color: isDarkMode
                          ? AppColors.secondaryColor
                          : AppColors.primaryColor,
                      fontWeight: FontWeight.bold,
                    ),
              ),
              SizedBox(
                height: 15.h,
              ),
              ProfileMenuWidget(
                title: "User-Id",
                value: "user_id",
                onTap: () {},
                iconData: Icons.copy,
              ),
              ProfileMenuWidget(
                title: "E-mail",
                value: "abc@gmail.com",
                onTap: () {},
              ),
              ProfileMenuWidget(
                title: "Phone number",
                value: "0123456789",
                onTap: () {},
              ),
              ProfileMenuWidget(
                title: "Gender",
                value: "Male",
                onTap: () {},
              ),
              ProfileMenuWidget(
                title: "Date of birth",
                value: "08 June, 2001",
                onTap: () {},
              ),
              SizedBox(
                height: 20.h,
              ),
              Center(
                child: TextButton(
                  onPressed: () {
                    customAlertDialogBox(
                      context: context,
                      bodyText:
                          "Are you sure you want to delete\nyour account?",
                      tapLeftButton: () {
                        Navigator.of(context).maybePop();
                      },
                      tapRightButton: () {
                        Navigator.of(context).maybePop();
                      },
                      leftButtonText: "Cancel",
                      rightButtonText: "Delete",
                      height: 130.h,
                    );
                  },
                  child: Text(
                    'Delete account',
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(
                          color: Colors.red,
                        ),
                  ),
                ),
              ),
              SizedBox(
                height: 100.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
