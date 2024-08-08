import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ui_designs/core/constants/app_colors.dart';
import 'package:ui_designs/core/constants/app_constants.dart';
import 'package:ui_designs/gen/assets.gen.dart';

class EleventhDayUi extends StatelessWidget {
  const EleventhDayUi({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        AppConstants.hideKeyboard();
      },
      child: Scaffold(
        backgroundColor: Colors.teal[700],
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 20.w,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 120.r,
                    backgroundColor: AppColors.white.withOpacity(0.2),
                    child: Image.asset(
                      Assets.images.scooter.path,
                      height: 200.h,
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Text(
                    'Liceria',
                    style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                          fontSize: 35.sp,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  Text(
                    'Delivery App',
                    style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                          fontSize: 24.sp,
                          fontWeight: FontWeight.w500,
                        ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  TextField(
                    style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                          fontSize: 16.sp,
                          color: AppColors.black,
                          fontWeight: FontWeight.w500,
                        ),
                    decoration: InputDecoration(
                      isDense: true,
                      prefixIcon: const Icon(
                        Icons.email,
                      ),
                      hintText: 'Email or Phone',
                      hintStyle:
                          Theme.of(context).textTheme.headlineLarge!.copyWith(
                                fontSize: 16.sp,
                                color: AppColors.black,
                                fontWeight: FontWeight.w500,
                              ),
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(
                          10.r,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  TextField(
                    obscureText: true,
                    style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                          fontSize: 16.sp,
                          color: AppColors.black,
                          fontWeight: FontWeight.w500,
                        ),
                    decoration: InputDecoration(
                      isDense: true,
                      prefixIcon: const Icon(
                        Icons.lock,
                      ),
                      hintText: 'Password',
                      hintStyle:
                          Theme.of(context).textTheme.headlineLarge!.copyWith(
                                fontSize: 16.sp,
                                color: AppColors.black,
                                fontWeight: FontWeight.w500,
                              ),
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(
                          10.r,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Forgot Password?',
                      style:
                          Theme.of(context).textTheme.headlineLarge!.copyWith(
                                fontSize: 20.sp,
                                fontWeight: FontWeight.w500,
                              ),
                    ),
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.teal[900],
                      padding: EdgeInsets.symmetric(
                        horizontal: 50.w,
                        vertical: 10.h,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                          20.r,
                        ),
                      ),
                    ),
                    child: const Text(
                      'Login',
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Text(
                    'or',
                    style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w500,
                        ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.teal[100],
                      padding: EdgeInsets.symmetric(
                        horizontal: 50.w,
                        vertical: 10.h,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                          20.0,
                        ),
                      ),
                    ),
                    child: Text(
                      'Create an account',
                      style:
                          Theme.of(context).textTheme.headlineLarge!.copyWith(
                                fontSize: 18.sp,
                                color: Colors.teal[900],
                                fontWeight: FontWeight.w500,
                              ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
