import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ui_designs/core/constants/app_colors.dart';
import 'package:ui_designs/gen/assets.gen.dart';

class TwelfthDayUi extends StatelessWidget {
  const TwelfthDayUi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1A1A2E),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.black,
              Color(0xFF1A1A2E),
            ],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20.h,
            ),
            SizedBox(
              height: 1.sh * 0.65,
              width: 1.sw,
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Positioned(
                    top: 0.h,
                    bottom: 0.h,
                    child: Image.asset(
                      Assets.images.a3dImage1.path,
                    ),
                  ),
                  Positioned(
                    top: 0.h,
                    left: 5.w,
                    child: Image.asset(
                      Assets.images.a3dImage2.path,
                    ),
                  ),
                  Positioned(
                    top: 0.h,
                    right: -10.w,
                    child: Image.asset(
                      Assets.images.a3dImage3.path,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 20.w,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Explore 3D Assets',
                    style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                          fontSize: 24.sp,
                          color: AppColors.white,
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Text(
                    '3D models for your project from our vast online catalog of cars, people, textures, architectural models and more.',
                    style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                          fontSize: 16.sp,
                          color: AppColors.white,
                          fontWeight: FontWeight.w300,
                        ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 15.w,
          ),
          child: SizedBox(
            width: 1.sw,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.purple,
                padding: EdgeInsets.symmetric(
                  vertical: 12.h,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                    10.r,
                  ),
                ),
              ),
              child: Text(
                'Explore',
                style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                      fontSize: 18.sp,
                      color: AppColors.white,
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
