import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ui_designs/core/constants/app_colors.dart';
import 'package:ui_designs/core/constants/app_constants.dart';
import 'package:ui_designs/gen/assets.gen.dart';

class TwentiethDayUi extends StatelessWidget {
  const TwentiethDayUi({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        AppConstants.hideKeyboard();
      },
      child: Scaffold(
        backgroundColor: const Color(0xFFE0EDE7),
        body: SafeArea(
          child: Container(
            height: 1.sh,
            width: 1.sw,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  Assets.images.loginBg.path,
                ),
                fit: BoxFit.cover,
              ),
            ),
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 20.w,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 40.h,
                    ),
                    Column(
                      children: [
                        CircleAvatar(
                          radius: 60.r,
                          backgroundColor: Colors.transparent,
                          backgroundImage: AssetImage(
                            Assets.images.avatar.path,
                          ),
                        ),
                        SizedBox(
                          height: 15.h,
                        ),
                        Text(
                          'Wardiere Inc.',
                          style: Theme.of(context)
                              .textTheme
                              .headlineLarge!
                              .copyWith(
                                fontSize: 20.sp,
                                fontWeight: FontWeight.bold,
                                color: Colors.green[800],
                              ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    // Login Form
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          'Login',
                          textAlign: TextAlign.center,
                          style: Theme.of(context)
                              .textTheme
                              .headlineLarge!
                              .copyWith(
                                fontSize: 24.sp,
                                fontWeight: FontWeight.bold,
                                color: Colors.green[800],
                              ),
                        ),
                        SizedBox(
                          height: 8.h,
                        ),
                        Text(
                          'Sign in to continue',
                          textAlign: TextAlign.center,
                          style: Theme.of(context)
                              .textTheme
                              .headlineLarge!
                              .copyWith(
                                fontSize: 16.sp,
                                color: Colors.green[800],
                              ),
                        ),
                        SizedBox(
                          height: 30.h,
                        ),
                        // Name Field
                        TextField(
                          style: Theme.of(context)
                              .textTheme
                              .headlineLarge!
                              .copyWith(
                                fontSize: 16.sp,
                                color: AppColors.black,
                              ),
                          decoration: InputDecoration(
                            isDense: true,
                            filled: true,
                            fillColor: Colors.green[200],
                            hintText: 'Name',
                            hintStyle: Theme.of(context)
                                .textTheme
                                .headlineLarge!
                                .copyWith(
                                  fontSize: 16.sp,
                                  color: AppColors.black,
                                ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(
                                5.r,
                              ),
                              borderSide: const BorderSide(
                                color: Colors.transparent,
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(
                                5.r,
                              ),
                              borderSide: const BorderSide(
                                color: Colors.transparent,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(
                                5.r,
                              ),
                              borderSide: const BorderSide(
                                color: Colors.transparent,
                              ),
                            ),
                            disabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(
                                5.r,
                              ),
                              borderSide: const BorderSide(
                                color: Colors.transparent,
                              ),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(
                                5.r,
                              ),
                              borderSide: const BorderSide(
                                color: Colors.transparent,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 15.h,
                        ),
                        // Password Field
                        TextField(
                          obscureText: true,
                          style: Theme.of(context)
                              .textTheme
                              .headlineLarge!
                              .copyWith(
                                fontSize: 16.sp,
                                color: AppColors.black,
                              ),
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(
                              horizontal: 10.w,
                              vertical: 10.h,
                            ),
                            isDense: true,
                            filled: true,
                            fillColor: Colors.green[200],
                            hintText: 'Password',
                            hintStyle: Theme.of(context)
                                .textTheme
                                .headlineLarge!
                                .copyWith(
                                  fontSize: 16.sp,
                                  color: AppColors.black,
                                ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(
                                5.r,
                              ),
                              borderSide: const BorderSide(
                                color: Colors.transparent,
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(
                                5.r,
                              ),
                              borderSide: const BorderSide(
                                color: Colors.transparent,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(
                                5.r,
                              ),
                              borderSide: const BorderSide(
                                color: Colors.transparent,
                              ),
                            ),
                            disabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(
                                5.r,
                              ),
                              borderSide: const BorderSide(
                                color: Colors.transparent,
                              ),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(
                                5.r,
                              ),
                              borderSide: const BorderSide(
                                color: Colors.transparent,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 30.h,
                        ),
                        // Login Button
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor:
                                Colors.green[800], // Background color
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                10.r,
                              ),
                            ),
                            padding: EdgeInsets.symmetric(
                              vertical: 10.h,
                            ),
                          ),
                          onPressed: () {},
                          child: Text(
                            'Log In',
                            style: Theme.of(context)
                                .textTheme
                                .headlineLarge!
                                .copyWith(
                                  fontSize: 18.sp,
                                  color: AppColors.white,
                                ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    // Forgot Password
                    Text(
                      'Forgot Password ? ',
                      style:
                          Theme.of(context).textTheme.headlineLarge!.copyWith(
                                fontSize: 16.sp,
                                color: Colors.green[600],
                                decoration: TextDecoration.underline,
                                decorationColor: Colors.green[600],
                              ),
                    ),
                    SizedBox(
                      height: 50.h,
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
