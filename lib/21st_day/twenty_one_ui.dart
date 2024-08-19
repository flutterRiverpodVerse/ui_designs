import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ui_designs/core/constants/app_colors.dart';
import 'package:ui_designs/core/constants/app_constants.dart';

class TwentyOneUi extends StatelessWidget {
  const TwentyOneUi({super.key});

  @override
  Widget build(BuildContext context) {
    final isDarkMode = AppConstants.isDarkMode(context: context);
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 20.w,
            vertical: 10.h,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Checkout Header
              Text(
                'Checkout',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                      fontSize: 22.sp,
                      fontWeight: FontWeight.bold,
                    ),
              ),
              SizedBox(
                height: 30.h,
              ),
              // Card Details
              Container(
                padding: EdgeInsets.all(
                  20.spMax,
                ),
                decoration: BoxDecoration(
                  color: isDarkMode ? AppColors.darkerGrey : Colors.white,
                  borderRadius: BorderRadius.circular(
                    15.r,
                  ),
                  boxShadow: isDarkMode
                      ? []
                      : [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.3),
                            spreadRadius: 5,
                            blurRadius: 10,
                            offset: const Offset(0, 2),
                          ),
                        ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'VISA',
                      style:
                          Theme.of(context).textTheme.headlineLarge!.copyWith(
                                fontSize: 22.sp,
                                fontWeight: FontWeight.bold,
                                color: AppColors.primaryColor,
                              ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Text(
                      '8154 XXXX XXXX XX82',
                      style:
                          Theme.of(context).textTheme.headlineLarge!.copyWith(
                                fontSize: 16.sp,
                                letterSpacing: 2,
                                fontWeight: FontWeight.w400,
                              ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('EXPIRATION DATE'),
                            SizedBox(height: 5),
                            Text('07/20'),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('CVV'),
                            SizedBox(height: 5),
                            Text('007'),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30.h,
              ),
              // Or Checkout With
              Text(
                'Or checkout with',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                      fontSize: 14.sp,
                    ),
              ),
              SizedBox(
                height: 20.h,
              ),
              // Payment Options
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  PaymentOptionButton(
                    icon: Icons.payment,
                    label: 'PayPal',
                  ),
                  PaymentOptionButton(
                    icon: Icons.apple,
                    label: 'Apple Pay',
                  ),
                ],
              ),
              SizedBox(
                height: 30.h,
              ),
              // Confirm Payment Button
              ElevatedButton(
                onPressed: () {
                  // Handle payment confirmation
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ThankYouScreen(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.primaryColor,
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
                  'CONFIRM PAYMENT',
                  style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                        fontSize: 16.sp,
                        color: Colors.white,
                      ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class PaymentOptionButton extends StatelessWidget {
  final IconData icon;
  final String label;

  const PaymentOptionButton({
    super.key,
    required this.icon,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    final isDarkMode = AppConstants.isDarkMode(context: context);
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: 10.h,
        horizontal: 20.w,
      ),
      decoration: BoxDecoration(
        color: isDarkMode ? AppColors.darkerGrey : AppColors.white,
        borderRadius: BorderRadius.circular(
          10.r,
        ),
        boxShadow: isDarkMode
            ? []
            : [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  spreadRadius: 5,
                  blurRadius: 10,
                  offset: const Offset(0, 2),
                ),
              ],
      ),
      child: Row(
        children: [
          Icon(
            icon,
            size: 24.sp,
          ),
          SizedBox(
            width: 10.w,
          ),
          Text(
            label,
            style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                  fontSize: 16.sp,
                ),
          ),
        ],
      ),
    );
  }
}

class ThankYouScreen extends StatelessWidget {
  const ThankYouScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(
            20.spMax,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Thanks!',
                style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                      fontSize: 30.sp,
                      color: AppColors.white,
                      fontWeight: FontWeight.bold,
                    ),
              ),
              SizedBox(height: 20.h),
              const Icon(
                Icons.check_circle,
                size: 100,
                color: Colors.white,
              ),
              SizedBox(height: 20.h),
              Text(
                'Thank you for purchasing. Your order will be shipped in 2-4 international days.',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                      fontSize: 16.sp,
                      color: AppColors.white,
                      fontWeight: FontWeight.w300,
                    ),
              ),
              SizedBox(
                height: 40.h,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                      10.r,
                    ),
                  ),
                  padding: EdgeInsets.symmetric(
                    vertical: 10.h,
                    horizontal: 40.w,
                  ),
                ),
                child: Text(
                  'CONTINUE SHOPPING',
                  style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                        fontSize: 16.sp,
                        color: AppColors.primaryColor,
                        fontWeight: FontWeight.w500,
                      ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
