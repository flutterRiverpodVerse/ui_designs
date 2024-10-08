/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/3d_image_1.png
  AssetGenImage get a3dImage1 =>
      const AssetGenImage('assets/images/3d_image_1.png');

  /// File path: assets/images/3d_image_2.png
  AssetGenImage get a3dImage2 =>
      const AssetGenImage('assets/images/3d_image_2.png');

  /// File path: assets/images/3d_image_3.png
  AssetGenImage get a3dImage3 =>
      const AssetGenImage('assets/images/3d_image_3.png');

  /// File path: assets/images/avatar.png
  AssetGenImage get avatar => const AssetGenImage('assets/images/avatar.png');

  /// File path: assets/images/avocado.png
  AssetGenImage get avocado => const AssetGenImage('assets/images/avocado.png');

  /// File path: assets/images/banana.png
  AssetGenImage get banana => const AssetGenImage('assets/images/banana.png');

  /// File path: assets/images/cat.png
  AssetGenImage get cat => const AssetGenImage('assets/images/cat.png');

  /// File path: assets/images/cat_palm.png
  AssetGenImage get catPalm =>
      const AssetGenImage('assets/images/cat_palm.png');

  /// File path: assets/images/chicken.png
  AssetGenImage get chicken => const AssetGenImage('assets/images/chicken.png');

  /// File path: assets/images/four.jpg
  AssetGenImage get four => const AssetGenImage('assets/images/four.jpg');

  /// File path: assets/images/guitar.jpg
  AssetGenImage get guitar => const AssetGenImage('assets/images/guitar.jpg');

  /// File path: assets/images/internet_safety.png
  AssetGenImage get internetSafety =>
      const AssetGenImage('assets/images/internet_safety.png');

  /// File path: assets/images/login_bg.png
  AssetGenImage get loginBg =>
      const AssetGenImage('assets/images/login_bg.png');

  /// File path: assets/images/onboarding_1.png
  AssetGenImage get onboarding1 =>
      const AssetGenImage('assets/images/onboarding_1.png');

  /// File path: assets/images/onboarding_2.png
  AssetGenImage get onboarding2 =>
      const AssetGenImage('assets/images/onboarding_2.png');

  /// File path: assets/images/onboarding_3.png
  AssetGenImage get onboarding3 =>
      const AssetGenImage('assets/images/onboarding_3.png');

  /// File path: assets/images/one.jpg
  AssetGenImage get one => const AssetGenImage('assets/images/one.jpg');

  /// File path: assets/images/ramen_image.png
  AssetGenImage get ramenImage =>
      const AssetGenImage('assets/images/ramen_image.png');

  /// File path: assets/images/recipe_highlight.png
  AssetGenImage get recipeHighlight =>
      const AssetGenImage('assets/images/recipe_highlight.png');

  /// File path: assets/images/recipe_image.png
  AssetGenImage get recipeImage =>
      const AssetGenImage('assets/images/recipe_image.png');

  /// File path: assets/images/scenery.jpg
  AssetGenImage get scenery => const AssetGenImage('assets/images/scenery.jpg');

  /// File path: assets/images/scooter.png
  AssetGenImage get scooter => const AssetGenImage('assets/images/scooter.png');

  /// File path: assets/images/three.jpg
  AssetGenImage get three => const AssetGenImage('assets/images/three.jpg');

  /// File path: assets/images/two.jpg
  AssetGenImage get two => const AssetGenImage('assets/images/two.jpg');

  /// File path: assets/images/water.png
  AssetGenImage get water => const AssetGenImage('assets/images/water.png');

  /// List of all assets
  List<AssetGenImage> get values => [
        a3dImage1,
        a3dImage2,
        a3dImage3,
        avatar,
        avocado,
        banana,
        cat,
        catPalm,
        chicken,
        four,
        guitar,
        internetSafety,
        loginBg,
        onboarding1,
        onboarding2,
        onboarding3,
        one,
        ramenImage,
        recipeHighlight,
        recipeImage,
        scenery,
        scooter,
        three,
        two,
        water
      ];
}

class Assets {
  Assets._();

  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
  });

  final String _assetName;

  final Size? size;
  final Set<String> flavors;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
