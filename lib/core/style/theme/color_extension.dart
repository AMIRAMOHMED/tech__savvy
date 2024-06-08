import 'package:flutter/material.dart';
import 'package:tech_savvy/core/style/color/colors_dark.dart';
import 'package:tech_savvy/core/style/color/colors_light.dart';

class MyColors extends ThemeExtension<MyColors> {
  const MyColors({
    required this.backGround,
    required this.mainFontColor,
    required this.primaryFontColor,
    required this.seconderyFontColor,
    required this.blueColor,
  });

  final Color? backGround;
  final Color? mainFontColor;
  final Color? primaryFontColor;
  final Color? blueColor;
  final Color? seconderyFontColor;

  @override
  ThemeExtension<MyColors> copyWith({
    Color? backGround,
    Color? mainFontColor,
    Color? primaryFontColor,
    Color? seconderyFontColor,
    Color? blueColor,
  }) {
    return MyColors(
      backGround: backGround ?? this.backGround,
      mainFontColor: mainFontColor ?? this.mainFontColor,
      primaryFontColor: primaryFontColor ?? this.primaryFontColor,
      seconderyFontColor: seconderyFontColor ?? this.seconderyFontColor,
      blueColor: blueColor ?? this.blueColor,
    );
  }

  @override
  ThemeExtension<MyColors> lerp(
    covariant ThemeExtension<MyColors>? other,
    double t,
  ) {
    if (other is! MyColors) {
      return this;
    }

    return MyColors(
      backGround: Color.lerp(backGround, other.backGround, t),
      mainFontColor: Color.lerp(mainFontColor, other.mainFontColor, t),
      primaryFontColor: Color.lerp(
        primaryFontColor,
        other.primaryFontColor,
        t,
      ),
      seconderyFontColor: Color.lerp(
        seconderyFontColor,
        other.seconderyFontColor,
        t,
      ),
      blueColor: Color.lerp(blueColor, other.blueColor, t),
    );
  }

  static const MyColors dark = MyColors(
    backGround: ColorsDark.navyBlue,
    mainFontColor: ColorsDark.lightPurple,
    primaryFontColor: ColorsDark.white,
    seconderyFontColor: ColorsDark.lightGrey,
    blueColor: ColorsDark.blue,
  );

  static const MyColors light = MyColors(
    backGround: ColorsLight.white,
    mainFontColor: ColorsLight.black,
    primaryFontColor: ColorsLight.grey,
    seconderyFontColor: ColorsLight.blue,
    blueColor: ColorsLight.blue,
  );
}
