import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileMenuWidget extends StatelessWidget {
  const ProfileMenuWidget({
    super.key,
    required this.title,
    required this.value,
    this.iconData = Icons.arrow_forward_ios,
    required this.onTap,
  });

  final String title, value;
  final IconData iconData;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.only(
          bottom: 15.h,
        ),
        child: Row(
          children: [
            Expanded(
              flex: 3,
              child: Text(
                title,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.titleSmall!.copyWith(
                      fontSize: 13.sp,
                      fontWeight: FontWeight.w300,
                    ),
              ),
            ),
            Expanded(
              flex: 5,
              child: Text(
                value,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ),
            Expanded(
              child: Icon(
                iconData,
                size: 20.sp,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
