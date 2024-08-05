import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ui_designs/core/constants/app_colors.dart';
import 'package:ui_designs/gen/assets.gen.dart';

import 'home_page.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 20.w,
            vertical: 10.h,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 100.h,
              ),
              Center(
                child: Image.asset(
                  Assets.images.avocado.path,
                  height: 150.h,
                  width: 1.sw * 0.5,
                ),
              ),
              SizedBox(
                height: 40.h,
              ),
              Text(
                'We deliver groceries at your doorstep',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                      fontSize: 15.sp,
                    ),
              ),
              SizedBox(
                height: 15.h,
              ),
              Text(
                'Fresh items everyday',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                      fontSize: 18.sp,
                      color: AppColors.secondaryColor,
                    ),
              ),
              SizedBox(
                height: 50.h,
              ),
              GestureDetector(
                onTap: () => Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const HomePage();
                    },
                  ),
                ),
                child: Container(
                  height: 40.h,
                  alignment: Alignment.center,
                  padding: EdgeInsets.symmetric(
                    horizontal: 10.w,
                    vertical: 5.h,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      10.r,
                    ),
                    color: const Color.fromARGB(255, 112, 91, 222),
                  ),
                  child: Text(
                    "Get Started",
                    style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                          fontSize: 18.sp,
                          color: AppColors.white,
                        ),
                  ),
                ),
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
