import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ui_designs/1st_day/onboarding_page.dart';
import 'package:ui_designs/core/constants/app_config.dart';
import 'package:ui_designs/core/theme/app_theme.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final data = MediaQuery.of(context);
    return MediaQuery(
      data: data.copyWith(
        textScaler: const TextScaler.linear(1),
      ),
      child: ScreenUtilInit(
        designSize: const Size(
          360,
          690,
        ),
        minTextAdapt: true,
        splitScreenMode: true,
        useInheritedMediaQuery: true,
        builder: (context, child) {
          return MaterialApp(
            title: 'UI Designs',
            debugShowCheckedModeBanner: false,
            theme: AppTheme.lightTheme,
            darkTheme: AppTheme.darkTheme,
            scaffoldMessengerKey: AppConfig.rootScaffoldMessengerKey,
            home: const OnboardingPage(),
          );
        },
      ),
    );
  }
}
