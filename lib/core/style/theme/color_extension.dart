import 'package:flutter/material.dart';
import 'package:tech_savvy/core/style/color/colors_dark.dart';
import 'package:tech_savvy/core/style/color/colors_light.dart';

class MyColors extends ThemeExtension<MyColors> {
  const MyColors({
    required this.textButtomColor2,
    required this.buttomColor,
    required this.textButtomColor,
    required this.hintTextColor,
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
  final Color? textButtomColor;
  final Color? hintTextColor;
  final Color? buttomColor;
  final Color? textButtomColor2;

  @override
  ThemeExtension<MyColors> copyWith({
    Color? textButtomColor2,
    Color? backGround,
    Color? mainFontColor,
    Color? primaryFontColor,
    Color? seconderyFontColor,
    Color? blueColor,
    Color? textButtomColor,
    Color? hintTextColor,
    Color? buttomColor,
  }) {
    return MyColors(
      textButtomColor2: textButtomColor2 ?? this.textButtomColor2,
      buttomColor: buttomColor ?? this.buttomColor,
      backGround: backGround ?? this.backGround,
      mainFontColor: mainFontColor ?? this.mainFontColor,
      primaryFontColor: primaryFontColor ?? this.primaryFontColor,
      seconderyFontColor: seconderyFontColor ?? this.seconderyFontColor,
      blueColor: blueColor ?? this.blueColor,
      textButtomColor: textButtomColor ?? this.textButtomColor,
      hintTextColor: hintTextColor ?? this.hintTextColor,
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
      textButtomColor2: Color.lerp(textButtomColor2, other.textButtomColor2, t),
      buttomColor: Color.lerp(buttomColor, other.buttomColor, t),
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
      textButtomColor: Color.lerp(textButtomColor, other.textButtomColor, t),
      hintTextColor: Color.lerp(hintTextColor, other.hintTextColor, t),
    );
  }

  static const MyColors dark = MyColors(
    textButtomColor2: ColorsDark.lightGrey,
    backGround: ColorsDark.navyBlue,
    mainFontColor: ColorsDark.lightPurple,
    primaryFontColor: ColorsDark.white,
    seconderyFontColor: ColorsDark.lightGrey,
    blueColor: ColorsDark.blue,
    textButtomColor: ColorsDark.lightGrey,
    hintTextColor: ColorsDark.palePurple,
    buttomColor: ColorsDark.grey,
  );

  static const MyColors light = MyColors(
    backGround: ColorsLight.white,
    mainFontColor: ColorsLight.black,
    primaryFontColor: ColorsLight.grey,
    seconderyFontColor: ColorsLight.blue,
    blueColor: ColorsLight.blue,
    textButtomColor: ColorsLight.white,
    hintTextColor: ColorsLight.grey,
    buttomColor: ColorsLight.white, textButtomColor2: ColorsLight.blue,
  );
}
