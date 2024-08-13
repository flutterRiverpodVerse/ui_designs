import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ui_designs/core/constants/app_colors.dart';
import 'package:ui_designs/core/constants/app_constants.dart';

class SixteenthDayUi extends StatelessWidget {
  const SixteenthDayUi({super.key});

  @override
  Widget build(BuildContext context) {
    final isDarkMode = AppConstants.isDarkMode(context: context);
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 15.w,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 20.h,
                ),
                Text(
                  'Your digital assets available anywhere you go.',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                        fontSize: 22.sp,
                        fontWeight: FontWeight.bold,
                      ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: isDarkMode
                        ? AppColors.grey.withOpacity(0.20)
                        : AppColors.black,
                    borderRadius: BorderRadius.circular(
                      10.r,
                    ),
                  ),
                  padding: EdgeInsets.all(
                    20.spMax,
                  ),
                  child: Column(
                    children: [
                      Text(
                        'My Assets',
                        style:
                            Theme.of(context).textTheme.headlineLarge!.copyWith(
                                  fontSize: 18.sp,
                                  color: AppColors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Text(
                        '\$ 12,812.35',
                        style:
                            Theme.of(context).textTheme.headlineLarge!.copyWith(
                                  fontSize: 30.sp,
                                  color: AppColors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          SizedBox(
                            height: 150.h,
                            width: 170.w,
                            child: CircularProgressIndicator(
                              value: 0.64,
                              strokeWidth: 16.w,
                              backgroundColor: Colors.purple,
                              valueColor: const AlwaysStoppedAnimation<Color>(
                                Colors.green,
                              ),
                            ),
                          ),
                          Text(
                            '64%\nGGe',
                            textAlign: TextAlign.center,
                            style: Theme.of(context)
                                .textTheme
                                .headlineLarge!
                                .copyWith(
                                  fontSize: 20.sp,
                                  color: AppColors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: AppColors.grey.withOpacity(0.20),
                          borderRadius: BorderRadius.circular(
                            10.r,
                          ),
                        ),
                        padding: EdgeInsets.symmetric(
                          vertical: 20.h,
                        ),
                        child: Column(
                          children: [
                            const Legend(
                              color: Colors.green,
                              text: '64% : GGeCoiass',
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            const Legend(
                              color: Colors.purple,
                              text: '36% : Oneterium',
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.lime,
                          padding: EdgeInsets.symmetric(
                            horizontal: 60.w,
                            vertical: 16.h,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                              20.r,
                            ),
                          ),
                        ),
                        child: Text(
                          'Buy GGe Coin',
                          style: Theme.of(context)
                              .textTheme
                              .headlineLarge!
                              .copyWith(
                                fontSize: 18.sp,
                                color: AppColors.black,
                                fontWeight: FontWeight.bold,
                              ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Legend extends StatelessWidget {
  final Color color;
  final String text;

  const Legend({
    super.key,
    required this.color,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 12.w,
          height: 12.h,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(
              2.r,
            ),
          ),
        ),
        SizedBox(
          width: 8.w,
        ),
        Text(
          text,
          style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                fontSize: 16.sp,
                color: AppColors.white,
                fontWeight: FontWeight.bold,
              ),
        ),
      ],
    );
  }
}
