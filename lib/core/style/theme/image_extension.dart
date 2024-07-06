import 'package:flutter/material.dart';
import 'package:tech_savvy/core/style/images/app_images.dart';

class MyAssets extends ThemeExtension<MyAssets> {
  const MyAssets({
    required this.curvedBackground,
    required this.onBoarding1,
    required this.onBoarding2,
    required this.onBoarding3,
  });

  final String? onBoarding1;
  final String? onBoarding2;
  final String? onBoarding3;
  final String? curvedBackground;

  @override
  ThemeExtension<MyAssets> copyWith({
    String? onBoarding1,
    String? onBoarding2,
    String? onBoarding3,
    String? curvedBackground,
  }) {
    return MyAssets(
      curvedBackground: curvedBackground ?? this.curvedBackground,
      onBoarding1: onBoarding1 ?? this.onBoarding1,
      onBoarding2: onBoarding2 ?? this.onBoarding2,
      onBoarding3: onBoarding3 ?? this.onBoarding3,
    );
  }

  @override
  ThemeExtension<MyAssets> lerp(
    covariant ThemeExtension<MyAssets>? other,
    double t,
  ) {
    if (other is! MyAssets) {
      return this;
    }
    return MyAssets(
      curvedBackground: curvedBackground,
      onBoarding1: onBoarding1,
      onBoarding2: onBoarding2,
      onBoarding3: onBoarding3,
    );
  }

  static const MyAssets light = MyAssets(
    curvedBackground: AppImages.curvedBackgroundLight,
    onBoarding1: AppImages.onBoarding1Light,
    onBoarding2: AppImages.onBoarding2Light,
    onBoarding3: AppImages.onBoarding3,
  );
  static const MyAssets dark = MyAssets(
    curvedBackground: AppImages.curvedBackgroundDark,
    onBoarding1: AppImages.onBoarding1Dark,
    onBoarding2: AppImages.onBoarding2Dark,
    onBoarding3: AppImages.onBoarding3Dark,
  );
}
