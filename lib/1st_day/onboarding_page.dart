import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../core/constants/app_colors.dart';
import '../core/constants/app_config.dart';
import '../core/constants/app_constants.dart';
import '../core/widgets/custom_elevated_button.dart';

class OnboardingPage extends HookConsumerWidget {
  const OnboardingPage({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isDarkMode = AppConstants.isDarkMode(context: context);

    final pageController = usePageController(initialPage: 0);
    final currentIndex = useState<int>(0);
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          height: 1.sh,
          width: 1.sw,
          child: Column(
            children: [
              Expanded(
                flex: 9,
                child: PageView.builder(
                  controller: pageController,
                  itemCount: 3,
                  onPageChanged: (value) {
                    currentIndex.value = value;
                  },
                  itemBuilder: (context, index) {
                    final text = AppConfig.onboardingTextList[index];
                    final image = AppConfig.onboardingImagePathList[index];
                    return Column(
                      children: [
                        SizedBox(height: 10.h),
                        if (index != 2)
                          GestureDetector(
                            onTap: () {
                              pageController.jumpToPage(2);
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  "Skip",
                                  style: Theme.of(context)
                                      .textTheme
                                      .displaySmall!
                                      .copyWith(
                                        fontSize: 16.sp,
                                        color: isDarkMode
                                            ? AppColors.white
                                            : AppColors.black,
                                        fontWeight: FontWeight.w800,
                                      ),
                                ),
                                SizedBox(width: 2.w),
                                Icon(
                                  Icons.arrow_forward,
                                  size: 18.sp,
                                ),
                                SizedBox(width: 15.w),
                              ],
                            ),
                          ),
                        Container(
                          height: 1.sh * 0.6,
                          width: 1.sw,
                          padding: EdgeInsets.symmetric(
                            horizontal: 10.w,
                          ),
                          child: Image.asset(
                            image,
                            fit: BoxFit.contain,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 15.w,
                          ),
                          child: Column(
                            children: [
                              Text(
                                text,
                                textAlign: TextAlign.center,
                                style: Theme.of(context)
                                    .textTheme
                                    .headlineLarge!
                                    .copyWith(
                                      fontSize: 16.sp,
                                      color: isDarkMode
                                          ? AppColors.white
                                          : AppColors.black,
                                      fontWeight: FontWeight.w600,
                                    ),
                              ),
                              SizedBox(height: 20.h),
                              if (index != 2)
                                CustomElevatedButton(
                                  height: 35.h,
                                  child: Text(
                                    "Next",
                                    style: Theme.of(context)
                                        .textTheme
                                        .titleLarge!
                                        .copyWith(
                                          color: AppColors.white,
                                        ),
                                  ),
                                  onPressed: () {
                                    pageController.nextPage(
                                      duration:
                                          const Duration(milliseconds: 400),
                                      curve: Curves.easeIn,
                                    );
                                  },
                                )
                              else
                                CustomElevatedButton(
                                  height: 35.h,
                                  child: Text(
                                    "Get Started",
                                    style: Theme.of(context)
                                        .textTheme
                                        .titleLarge!
                                        .copyWith(
                                          color: AppColors.white,
                                        ),
                                  ),
                                  onPressed: () {
                                    AppConstants.showSnackbar(
                                      backgroundColor: AppColors.success,
                                      text: "That's it",
                                    );
                                  },
                                ),
                            ],
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  children: [
                    SizedBox(height: 20.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        3,
                        (index) => AnimatedContainer(
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.easeIn,
                          margin: EdgeInsets.symmetric(
                            horizontal: 5.w,
                          ),
                          height: 8.h,
                          width: currentIndex.value == index ? 50.w : 30.w,
                          decoration: BoxDecoration(
                            color: currentIndex.value == index
                                ? AppColors.primaryColor
                                : AppColors.grey,
                            borderRadius: BorderRadius.circular(5.r),
                          ),
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
    );
  }
}
