import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ui_designs/core/constants/app_constants.dart';
import 'package:ui_designs/gen/assets.gen.dart';

class ThirteenthDayUi extends StatelessWidget {
  const ThirteenthDayUi({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        AppConstants.hideKeyboard();
      },
      child: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 20.w,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              for (int i = 0; i < 3; i++)
                                Padding(
                                  padding: EdgeInsets.only(
                                    right: 4.w,
                                  ),
                                  child: CircleAvatar(
                                    radius: 3.r,
                                    backgroundColor: Colors.orange,
                                  ),
                                ),
                            ],
                          ),
                        ],
                      ),
                      Text(
                        'Welcome to',
                        style:
                            Theme.of(context).textTheme.headlineLarge!.copyWith(
                                  fontSize: 24.sp,
                                  fontWeight: FontWeight.bold,
                                ),
                      ),
                      Text(
                        'Pet Shop',
                        style: Theme.of(context).textTheme.titleLarge!.copyWith(
                              fontSize: 36,
                              fontWeight: FontWeight.w900,
                              color: Colors.orange,
                            ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Center(
                  child: Image.asset(
                    Assets.images.cat.path,
                    width: 120.w,
                    height: 120.h,
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  height: 1.sh,
                  width: 1.sw,
                  padding: EdgeInsets.symmetric(
                    horizontal: 20.w,
                    vertical: 30.h,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.brown,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20.r),
                      topRight: Radius.circular(20.r),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Sign Up',
                            style: Theme.of(context)
                                .textTheme
                                .titleLarge!
                                .copyWith(
                                  fontSize: 24.sp,
                                  fontWeight: FontWeight.w900,
                                  color: Colors.white,
                                ),
                          ),
                          Image.asset(
                            Assets.images.catPalm.path,
                            height: 50.h,
                            width: 50.w,
                            fit: BoxFit.contain,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 30.h,
                      ),
                      buildTextField(
                        'Olivia Wilson',
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      buildTextField(
                        'hello@reallygreatsite.com',
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      buildTextField(
                        '******',
                        obscureText: true,
                      ),
                      SizedBox(
                        height: 30.h,
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          padding: EdgeInsets.zero,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                              10.r,
                            ),
                          ),
                          minimumSize: Size(
                            1.sw,
                            45.h,
                          ),
                        ),
                        child: Text(
                          'Next',
                          style: Theme.of(context)
                              .textTheme
                              .headlineLarge!
                              .copyWith(
                                fontSize: 20.sp,
                                fontWeight: FontWeight.w900,
                                color: Colors.white,
                              ),
                        ),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Center(
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: 'Already have an account? ',
                                style: Theme.of(context)
                                    .textTheme
                                    .headlineLarge!
                                    .copyWith(
                                      fontSize: 15.sp,
                                      color: Colors.white,
                                    ),
                              ),
                              TextSpan(
                                text: 'Sign in',
                                style: Theme.of(context)
                                    .textTheme
                                    .headlineLarge!
                                    .copyWith(
                                      fontSize: 18.sp,
                                      fontWeight: FontWeight.w900,
                                      color: Colors.orange,
                                    ),
                              ),
                            ],
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

  Widget buildTextField(
    String hintText, {
    bool obscureText = false,
  }) {
    return TextField(
      obscureText: obscureText,
      decoration: InputDecoration(
        hintText: hintText,
        fillColor: Colors.white.withOpacity(0.3),
        filled: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(
            8.r,
          ),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}

class OrangeBlobPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.orange
      ..style = PaintingStyle.fill;

    final path = Path()
      ..moveTo(size.width * 0.5, 0)
      ..quadraticBezierTo(size.width, 0, size.width, size.height * 0.5)
      ..quadraticBezierTo(
          size.width, size.height, size.width * 0.5, size.height)
      ..quadraticBezierTo(0, size.height, 0, size.height * 0.5)
      ..quadraticBezierTo(0, 0, size.width * 0.5, 0)
      ..close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
