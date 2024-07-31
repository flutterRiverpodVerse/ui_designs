import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ui_designs/core/constants/app_colors.dart';

import '../core/constants/app_constants.dart';
import '../core/shared/providers.dart';
import '../core/widgets/custom_elevated_button.dart';
import '../core/widgets/custom_text_form_field.dart';

class RegisterPage extends HookConsumerWidget {
  const RegisterPage({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isDarkMode = AppConstants.isDarkMode(context: context);
    final formKey = ref.watch(registerFormKeyProvider);
    final nameController = useTextEditingController();
    final emailController = useTextEditingController();
    final passwordController = useTextEditingController();
    final confirmPasswordController = useTextEditingController();

    final passwordVisibility = useState<bool>(true);
    final confirmPasswordVisibility = useState<bool>(true);

    return GestureDetector(
      onTap: () {
        AppConstants.hideKeyboard();
      },
      child: Scaffold(
        body: SafeArea(
          child: Container(
            height: 1.sh,
            width: 1.sw,
            padding: EdgeInsets.symmetric(
              horizontal: 20.w,
              vertical: 15.h,
            ),
            decoration: BoxDecoration(
              color: isDarkMode ? AppColors.black : AppColors.white,
            ),
            child: SingleChildScrollView(
              child: Form(
                key: formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 20.h),
                    Row(
                      children: [
                        Text(
                          "Register",
                          style: Theme.of(context)
                              .textTheme
                              .headlineLarge!
                              .copyWith(
                                fontWeight: FontWeight.bold,
                              ),
                        ),
                      ],
                    ),
                    SizedBox(height: 30.h),
                    CustomTextFormField(
                      controller: nameController,
                      isDarkMode: isDarkMode,
                      hintText: "Name",
                      textInputAction: TextInputAction.next,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "required";
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 20.h),
                    CustomTextFormField(
                      controller: emailController,
                      isDarkMode: isDarkMode,
                      hintText: "E-mail",
                      keyboardType: TextInputType.emailAddress,
                      textInputAction: TextInputAction.next,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "required";
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 20.h),
                    CustomTextFormField(
                      controller: passwordController,
                      isDarkMode: isDarkMode,
                      hintText: "Password",
                      keyboardType: TextInputType.visiblePassword,
                      obscureValue: passwordVisibility.value,
                      suffixIcon: IconButton(
                        highlightColor: Colors.transparent,
                        splashColor: Colors.transparent,
                        onPressed: () {
                          passwordVisibility.value = !passwordVisibility.value;
                        },
                        icon: Icon(
                          passwordVisibility.value
                              ? Icons.visibility_off
                              : Icons.visibility,
                          size: 22.sp,
                        ),
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "required";
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 20.h),
                    CustomTextFormField(
                      controller: confirmPasswordController,
                      isDarkMode: isDarkMode,
                      hintText: "Confirm Password",
                      keyboardType: TextInputType.visiblePassword,
                      obscureValue: confirmPasswordVisibility.value,
                      suffixIcon: IconButton(
                        highlightColor: Colors.transparent,
                        splashColor: Colors.transparent,
                        onPressed: () {
                          confirmPasswordVisibility.value =
                              !confirmPasswordVisibility.value;
                        },
                        icon: Icon(
                          confirmPasswordVisibility.value
                              ? Icons.visibility_off
                              : Icons.visibility,
                          size: 22.sp,
                        ),
                      ),
                      validator: (value) {
                        if (passwordController.text !=
                            confirmPasswordController.text) {
                          return "password not matched";
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 40.h),
                    CustomElevatedButton(
                      height: 35.h,
                      child: Text(
                        "Register",
                        style: Theme.of(context)
                            .textTheme
                            .headlineMedium!
                            .copyWith(
                              fontSize: 17.sp,
                              color: AppColors.white,
                              fontWeight: FontWeight.w700,
                            ),
                      ),
                      onPressed: () {
                        AppConstants.hideKeyboard();
                        if (formKey.currentState!.validate()) {}
                      },
                    ),
                    SizedBox(height: 20.h),
                    Center(
                      child: RichText(
                        text: TextSpan(
                          text: 'Already have an account? ',
                          style: Theme.of(context)
                              .textTheme
                              .headlineSmall!
                              .copyWith(
                                fontSize: 15.sp,
                              ),
                          children: [
                            TextSpan(
                              text: 'Log In',
                              style: Theme.of(context)
                                  .textTheme
                                  .headlineSmall!
                                  .copyWith(
                                    fontSize: 18.sp,
                                    fontWeight: FontWeight.w800,
                                  ),
                              recognizer: TapGestureRecognizer()..onTap = () {},
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
