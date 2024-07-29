import 'package:flutter/material.dart';

import '../../gen/assets.gen.dart';

mixin AppConfig {
  static final GlobalKey<ScaffoldMessengerState> rootScaffoldMessengerKey =
      GlobalKey<ScaffoldMessengerState>();

  static final List<String> onboardingImagePathList = [
    Assets.images.onboarding1.path,
    Assets.images.onboarding2.path,
    Assets.images.onboarding3.path,
  ];

  static final List<String> onboardingTextList = [
    "Unlock the power of Riverpod.\nDive into a community of learners and experts.",
    "Discover a world of knowledge.\nLearn from in-depth articles on Riverpod state management.",
    "Share your insights, inspire others.\nYour voice matters in the Riverpod community."
  ];
}
