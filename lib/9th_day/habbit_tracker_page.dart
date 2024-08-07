import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ui_designs/core/constants/app_colors.dart';
import 'package:ui_designs/core/constants/app_constants.dart';

class HabbitTrackerPage extends StatelessWidget {
  const HabbitTrackerPage({super.key});

  @override
  Widget build(BuildContext context) {
    final isDarkMode = AppConstants.isDarkMode(context: context);
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 20.w,
                  vertical: 10.h,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Hello, Jared',
                              style: Theme.of(context)
                                  .textTheme
                                  .headlineLarge!
                                  .copyWith(
                                    fontSize: 20.sp,
                                    fontWeight: FontWeight.bold,
                                  ),
                            ),
                            Text(
                              'Let\'s make a habit!',
                              style: Theme.of(context)
                                  .textTheme
                                  .headlineLarge!
                                  .copyWith(
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w300,
                                  ),
                            ),
                          ],
                        ),
                        CircleAvatar(
                          child: Icon(
                            Icons.person,
                            size: 24.sp,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 15.w,
                        vertical: 8.h,
                      ),
                      decoration: BoxDecoration(
                        color: AppColors.secondaryColor,
                        borderRadius: BorderRadius.circular(
                          15.r,
                        ),
                      ),
                      child: Text(
                        '6 Aug 2024',
                        style:
                            Theme.of(context).textTheme.headlineLarge!.copyWith(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w600,
                                  color: AppColors.white,
                                ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 100.h,
                width: 1.sw,
                alignment: Alignment.center,
                child: DatePicker(
                  DateTime.now().toLocal(),
                  width: 60.w,
                  height: 80.h,
                  // controller: controller,
                  initialSelectedDate: DateTime.now().toLocal(),

                  monthTextStyle: Theme.of(context)
                      .textTheme
                      .headlineLarge!
                      .copyWith(
                        fontSize: 12.sp,
                        color: isDarkMode ? AppColors.white : AppColors.black,
                      ),
                  dayTextStyle: Theme.of(context)
                      .textTheme
                      .headlineLarge!
                      .copyWith(
                        fontSize: 12.sp,
                        color: isDarkMode ? AppColors.white : AppColors.black,
                      ),
                  dateTextStyle: Theme.of(context)
                      .textTheme
                      .headlineLarge!
                      .copyWith(
                        fontSize: 16.sp,
                        color: isDarkMode ? AppColors.white : AppColors.black,
                      ),
                  daysCount: 100,
                  onDateChange: (date) {},
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 20.w,
                  vertical: 10.h,
                ),
                child: GridView.count(
                  shrinkWrap: true,
                  physics: const ScrollPhysics(),
                  crossAxisCount: 2,
                  childAspectRatio: 1.0,
                  mainAxisSpacing: 15.h,
                  crossAxisSpacing: 15.w,
                  children: [
                    buildHabbitCard(
                      title: 'Sleep',
                      progress: 0.75,
                      color: Colors.green,
                      context: context,
                    ),
                    buildHabbitCard(
                      title: 'Walk',
                      progress: 0.5,
                      color: Colors.green,
                      context: context,
                    ),
                    buildHabbitCard(
                      title: 'Read',
                      progress: 0.25,
                      color: Colors.green,
                      context: context,
                    ),
                    buildHabbitCard(
                      title: 'Water',
                      progress: 0.6,
                      color: Colors.green,
                      context: context,
                    ),
                    buildHabbitCard(
                      title: 'Water',
                      progress: 0.6,
                      color: Colors.green,
                      context: context,
                    ),
                    buildHabbitCard(
                      title: 'Water',
                      progress: 0.6,
                      color: Colors.green,
                      context: context,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 40.h,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildHabbitCard({
    required String title,
    required double progress,
    required Color color,
    required BuildContext context,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.grey.withOpacity(0.4),
        borderRadius: BorderRadius.circular(
          20.r,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.bold,
                ),
          ),
          SizedBox(
            height: 10.h,
          ),
          CircularProgressIndicator(
            value: progress,
            valueColor: AlwaysStoppedAnimation<Color>(color),
            backgroundColor: Colors.grey[800],
          ),
          SizedBox(
            height: 10.h,
          ),
          Text(
            '${(progress * 100).toInt()}%',
            style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.bold,
                ),
          ),
        ],
      ),
    );
  }
}
