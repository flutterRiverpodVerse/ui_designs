import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ui_designs/core/constants/app_colors.dart';
import 'package:ui_designs/gen/assets.gen.dart';

class TwentyTwoUi extends StatelessWidget {
  const TwentyTwoUi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 20.w,
              vertical: 10.h,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                // Header
                Text(
                  'PREMIUM',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.purple,
                      ),
                ),
                SizedBox(
                  height: 15.h,
                ),
                // Title
                Text(
                  'Make your internet safe',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                        fontSize: 24.sp,
                        fontWeight: FontWeight.bold,
                      ),
                ),
                SizedBox(
                  height: 15.h,
                ),
                // Illustration
                Center(
                  child: Image.asset(
                    Assets.images.internetSafety.path,
                    width: 250.w,
                    height: 250.h,
                    fit: BoxFit.cover,
                  ),
                ),

                // Features
                const FeatureItem(
                  icon: Icons.location_on,
                  title: 'All Locations',
                  description:
                      'Connect through any of our 97 locations all over the world for unparalleled anonymity.',
                ),
                const FeatureItem(
                  icon: Icons.speed,
                  title: 'Top Speed',
                  description:
                      'Don\'t let safety in the way of enjoying media content at the highest level of quality.',
                ),
                const FeatureItem(
                  icon: Icons.no_photography,
                  title: 'No Ads',
                  description:
                      'Get rid of all those banners and videos when you open the app.',
                ),
                SizedBox(
                  height: 20.h,
                ),
                // Pricing Button
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            const SubscriptionActivatedScreen(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.purple,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        10.r,
                      ),
                    ),
                    padding: EdgeInsets.symmetric(
                      vertical: 10.h,
                    ),
                  ),
                  child: Text(
                    '\$1.99 Month',
                    style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                          fontSize: 18.sp,
                          color: AppColors.white,
                        ),
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        10.r,
                      ),
                      side: BorderSide.none,
                    ),
                    padding: EdgeInsets.symmetric(
                      vertical: 10.h,
                    ),
                  ),
                  child: Text(
                    '\$0.99 Week',
                    style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                          fontSize: 18.sp,
                          color: AppColors.white,
                        ),
                  ),
                ),
                SizedBox(
                  height: 40.h,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class FeatureItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final String description;

  const FeatureItem({
    super.key,
    required this.icon,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: 10.h,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(
            icon,
            size: 30.sp,
            color: Colors.purple,
          ),
          SizedBox(
            width: 15.w,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.bold,
                      ),
                ),
                SizedBox(
                  height: 8.h,
                ),
                Text(
                  description,
                  style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w300,
                      ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class SubscriptionActivatedScreen extends StatelessWidget {
  const SubscriptionActivatedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(
          20.spMax,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Title
            Text(
              'CONGRATULATIONS',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.purple,
                  ),
            ),
            SizedBox(
              height: 20.h,
            ),
            // Illustration
            Center(
              child: Icon(
                Icons.check_circle,
                size: 150.sp,
                color: Colors.purple,
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
            // Subscription Activated Message
            Text(
              'Subscription activated',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                    fontSize: 24.sp,
                    fontWeight: FontWeight.bold,
                  ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Text(
              'Congratulations, you have successfully activated Premium access to all the features of the application, enjoy it!',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w400,
                  ),
            ),
            SizedBox(
              height: 30.h,
            ),
            // Features Summary
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FeatureSummaryItem(
                    icon: Icons.location_on, label: 'All Locations'),
                FeatureSummaryItem(icon: Icons.speed, label: 'Top Speed'),
                FeatureSummaryItem(icon: Icons.no_photography, label: 'No Ads'),
              ],
            ),
            SizedBox(
              height: 30.h,
            ),
            // Done Button
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.purple,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                    10.r,
                  ),
                ),
                padding: EdgeInsets.symmetric(
                  vertical: 10.h,
                ),
              ),
              child: Text(
                'Done',
                style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                      fontSize: 18.sp,
                      color: Colors.white,
                    ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class FeatureSummaryItem extends StatelessWidget {
  final IconData icon;
  final String label;

  const FeatureSummaryItem({
    super.key,
    required this.icon,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          size: 40.sp,
          color: Colors.purple,
        ),
        SizedBox(
          height: 5.h,
        ),
        Text(
          label,
          style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                fontSize: 14.sp,
                fontWeight: FontWeight.w400,
              ),
        ),
      ],
    );
  }
}
