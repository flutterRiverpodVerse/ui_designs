import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants/app_colors.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.controller,
    required this.isDarkMode,
    required this.hintText,
    this.suffixIcon,
    this.obscureValue = false,
    this.keyboardType = TextInputType.text,
    this.textInputAction = TextInputAction.done,
    this.validator,
  });

  final TextEditingController controller;
  final bool isDarkMode;
  final String hintText;
  final Widget? suffixIcon;
  final bool? obscureValue;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: obscureValue!,
      style: Theme.of(context).textTheme.headlineMedium!.copyWith(
            fontSize: 15.sp,
            fontWeight: FontWeight.w400,
          ),
      autovalidateMode: AutovalidateMode.onUserInteraction,
      cursorHeight: 15.h,
      keyboardType: keyboardType,
      keyboardAppearance: isDarkMode ? Brightness.dark : Brightness.light,
      textInputAction: textInputAction,
      decoration: InputDecoration(
        isDense: true,
        filled: true,
        fillColor: AppColors.grey.withOpacity(0.3),
        hintText: hintText,
        hintStyle: Theme.of(context).textTheme.headlineMedium!.copyWith(
              fontSize: 15.sp,
              fontWeight: FontWeight.w400,
            ),
        suffixIcon: suffixIcon,
        suffixIconConstraints: suffixIcon != null
            ? BoxConstraints(
                minWidth: 50.w,
              )
            : null,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.r),
          borderSide: BorderSide(
            strokeAlign: 1.w,
            color: AppColors.grey,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.r),
          borderSide: BorderSide(
            strokeAlign: 1.w,
            color: AppColors.grey.withOpacity(0.3),
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.r),
          borderSide: BorderSide(
            strokeAlign: 1.w,
            color: AppColors.grey.withOpacity(0.3),
          ),
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.r),
          borderSide: BorderSide(
            strokeAlign: 1.w,
            color: AppColors.grey.withOpacity(0.3),
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.r),
          borderSide: BorderSide(
            strokeAlign: 1.w,
            color: AppColors.grey.withOpacity(0.3),
          ),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.r),
          borderSide: BorderSide(
            strokeAlign: 1.w,
            color: AppColors.grey.withOpacity(0.3),
          ),
        ),
      ),
      validator: validator,
    );
  }
}
