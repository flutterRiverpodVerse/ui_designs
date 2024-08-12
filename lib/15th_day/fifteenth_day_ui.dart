import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ui_designs/core/constants/app_colors.dart';
import 'package:ui_designs/core/constants/app_constants.dart';
import 'package:ui_designs/gen/assets.gen.dart';

class FifteenthDayUi extends StatelessWidget {
  const FifteenthDayUi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 15.w,
              vertical: 10.h,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(
                        16.spMax,
                      ),
                      child: Image.asset(
                        Assets.images.guitar.path,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned(
                      top: 15.h,
                      left: 15.w,
                      child: IconButton(
                        icon: const Icon(
                          Icons.arrow_back,
                        ),
                        onPressed: () {},
                        color: Colors.brown,
                        iconSize: 32.sp,
                      ),
                    ),
                    Positioned(
                      top: 15.h,
                      right: 15.w,
                      child: Row(
                        children: [
                          IconButton(
                            icon: const Icon(Icons.favorite_border),
                            onPressed: () {},
                            color: Colors.brown,
                            iconSize: 32.sp,
                          ),
                          SizedBox(
                            width: 8.w,
                          ),
                          IconButton(
                            icon: const Icon(
                              Icons.camera_alt_outlined,
                            ),
                            onPressed: () {},
                            color: Colors.brown,
                            iconSize: 32.sp,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15.h,
                ),
                Text(
                  "Acoustic & Electric Guitar",
                  style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                        fontSize: 22.sp,
                        fontWeight: FontWeight.bold,
                      ),
                ),
                SizedBox(
                  height: 8.h,
                ),
                Text(
                  "By. Fauget Store",
                  style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w300,
                        color: Colors.grey,
                      ),
                ),
                SizedBox(
                  height: 8.h,
                ),
                Row(
                  children: [
                    Text(
                      "\$50.00",
                      style:
                          Theme.of(context).textTheme.headlineLarge!.copyWith(
                                fontSize: 23.sp,
                                fontWeight: FontWeight.bold,
                              ),
                    ),
                    SizedBox(
                      width: 15.w,
                    ),
                    Row(
                      children: List.generate(
                        5,
                        (index) => Icon(
                          Icons.star,
                          color: Colors.amber,
                          size: 20.sp,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15.h,
                ),
                Text(
                  "Description",
                  style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.bold,
                      ),
                ),
                SizedBox(
                  height: 8.h,
                ),
                Text(
                  "Why settle for one when you can have both? This exclusive package caters to every musical whim, ensuring you're equipped for any genre.",
                  style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                        fontSize: 14.sp,
                        color: Colors.grey,
                        fontWeight: FontWeight.w400,
                      ),
                ),
                SizedBox(
                  height: 16.h,
                ),
                Text(
                  "Available Colors",
                  style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.bold,
                      ),
                ),
                SizedBox(
                  height: 8.h,
                ),
                const Row(
                  children: [
                    ColorOption(Colors.brown),
                    ColorOption(Colors.black),
                    ColorOption(Colors.grey),
                  ],
                ),
                SizedBox(
                  height: 16.h,
                ),
                Text(
                  "Available Sizes",
                  style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.bold,
                      ),
                ),
                SizedBox(
                  height: 8.h,
                ),
                const Row(
                  children: [
                    SizeOption(
                      "Small",
                    ),
                    SizeOption(
                      "Large",
                    ),
                  ],
                ),
                SizedBox(
                  height: 16.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Quantity",
                      style:
                          Theme.of(context).textTheme.headlineLarge!.copyWith(
                                fontSize: 18.sp,
                                fontWeight: FontWeight.bold,
                              ),
                    ),
                    Row(
                      children: [
                        const QuantityButton(Icons.remove),
                        Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 16.w,
                          ),
                          child: Text(
                            "1",
                            style: Theme.of(context)
                                .textTheme
                                .headlineLarge!
                                .copyWith(
                                  fontSize: 18.sp,
                                  fontWeight: FontWeight.bold,
                                ),
                          ),
                        ),
                        const QuantityButton(
                          Icons.add,
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 24.h,
                ),
                Center(
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.brown,
                      padding: EdgeInsets.symmetric(
                        horizontal: 60.w,
                        vertical: 15.h,
                      ),
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(
                          color: Colors.white,
                          style: BorderStyle.none,
                        ),
                        borderRadius: BorderRadius.circular(
                          20.r,
                        ),
                      ),
                    ),
                    child: Text(
                      "Check Out",
                      style:
                          Theme.of(context).textTheme.headlineLarge!.copyWith(
                                fontSize: 18.sp,
                                color: AppColors.white,
                                fontWeight: FontWeight.bold,
                              ),
                    ),
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

class ColorOption extends StatelessWidget {
  final Color color;

  const ColorOption(this.color, {super.key});

  @override
  Widget build(BuildContext context) {
    final isDarkMode = AppConstants.isDarkMode(context: context);
    return Container(
      width: 30.w,
      height: 25.h,
      margin: EdgeInsets.only(
        right: 8.w,
      ),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(
          16.r,
        ),
        border: Border.all(
          color: isDarkMode ? AppColors.white : AppColors.black,
        ),
      ),
    );
  }
}

class SizeOption extends StatelessWidget {
  final String size;

  const SizeOption(this.size, {super.key});

  @override
  Widget build(BuildContext context) {
    final isDarkMode = AppConstants.isDarkMode(context: context);
    return Container(
      margin: EdgeInsets.only(
        right: 8.w,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          10.r,
        ),
        border: Border.all(
          color: isDarkMode ? AppColors.white : AppColors.black,
        ),
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 16.w,
        vertical: 8.h,
      ),
      child: Text(
        size,
        style: Theme.of(context).textTheme.headlineLarge!.copyWith(
              fontSize: 15.sp,
              fontWeight: FontWeight.bold,
            ),
      ),
    );
  }
}

class QuantityButton extends StatelessWidget {
  final IconData icon;

  const QuantityButton(this.icon, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.brown,
        borderRadius: BorderRadius.circular(
          8.r,
        ),
      ),
      child: IconButton(
        icon: Icon(
          icon,
        ),
        color: Colors.white,
        onPressed: () {},
      ),
    );
  }
}
