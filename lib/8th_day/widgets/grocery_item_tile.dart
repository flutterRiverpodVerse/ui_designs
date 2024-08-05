import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/constants/app_colors.dart';

class GroceryItemTile extends StatelessWidget {
  final String itemName;
  final String itemPrice;
  final String imagePath;
  final Color color;
  void Function()? onPressed;

  GroceryItemTile({
    super.key,
    required this.itemName,
    required this.itemPrice,
    required this.imagePath,
    required this.color,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(
        5.spMax,
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            12.r,
          ),
          color: color.withOpacity(0.6),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 40.w,
              ),
              child: Image.asset(
                imagePath,
                height: 64.h,
              ),
            ),
            Text(
              itemName,
              style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                    fontSize: 15.sp,
                  ),
            ),
            MaterialButton(
              onPressed: onPressed,
              color: color,
              child: Text(
                '\$$itemPrice',
                style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                      fontSize: 14.sp,
                      color: AppColors.white,
                      fontWeight: FontWeight.bold,
                    ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
