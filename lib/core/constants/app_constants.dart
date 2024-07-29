import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ui_designs/core/constants/app_colors.dart';
import 'package:ui_designs/core/constants/app_config.dart';

mixin AppConstants {
  static hideKeyboard() {
    FocusManager.instance.primaryFocus?.unfocus();
  }

  static bool isDarkMode({
    required BuildContext context,
  }) {
    return MediaQuery.of(context).platformBrightness == Brightness.dark;
  }

  static showSnackbar({
    required Color backgroundColor,
    IconData? iconData,
    required String text,
  }) {
    AppConfig.rootScaffoldMessengerKey.currentState!.showSnackBar(
      SnackBar(
        backgroundColor: backgroundColor,
        content: Row(
          children: [
            Icon(
              backgroundColor == AppColors.error
                  ? Icons.close
                  : backgroundColor == AppColors.warning
                      ? Icons.warning
                      : backgroundColor == AppColors.success
                          ? Icons.check
                          : iconData,
              color: AppColors.white,
            ),
            SizedBox(
              width: 15.w,
            ),
            Expanded(
              child: Text(
                text,
                style:
                    Theme.of(AppConfig.rootScaffoldMessengerKey.currentContext!)
                        .textTheme
                        .titleSmall!
                        .copyWith(
                          color: AppColors.white,
                        ),
              ),
            ),
          ],
        ),
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            8.r,
          ),
        ),
        padding: EdgeInsets.symmetric(
          horizontal: 15.w,
          vertical: 10.h,
        ),
        duration: const Duration(
          seconds: 2,
        ),
      ),
    );
  }
}
