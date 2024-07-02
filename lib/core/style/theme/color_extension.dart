import 'package:flutter/material.dart';
import 'package:tech_savvy/core/style/color/colors_dark.dart';
import 'package:tech_savvy/core/style/color/colors_light.dart';

class MyColors extends ThemeExtension<MyColors> {
  const MyColors({
    required this.bottomNavigationBar,
    required this.backGround2,
    required this.mainFontColor2,
    required this.textButtomColor2,
    required this.buttomColor,
    required this.textButtomColor,
    required this.hintTextColor,
    required this.backGround,
    required this.mainFontColor,
    required this.primaryFontColor,
    required this.seconderyFontColor,
    required this.blueColor,
    required this.fillTextFeildColor,
    required this.borderColor,
    required this.backGround3,
    required this.searchBarcolor,
  });

  final Color? backGround;
  final Color? bottomNavigationBar;
  final Color? fillTextFeildColor;
  final Color? borderColor;
  final Color? mainFontColor;
  final Color? primaryFontColor;
  final Color? blueColor;
  final Color? seconderyFontColor;
  final Color? textButtomColor;
  final Color? hintTextColor;
  final Color? buttomColor;
  final Color? textButtomColor2;
  final Color? backGround2;
  final Color? mainFontColor2;
  final Color? backGround3;

  final Color? searchBarcolor;

  @override
  ThemeExtension<MyColors> copyWith({
    Color? bottomNavigationBar,
    Color? textButtomColor2,
    Color? borderColor,
    Color? backGround,
    Color? mainFontColor,
    Color? fillTextFeildColor,
    Color? primaryFontColor,
    Color? seconderyFontColor,
    Color? blueColor,
    Color? textButtomColor,
    Color? hintTextColor,
    Color? buttomColor,
    Color? backGround2,
    Color? mainFontColor2,
    Color? backGround3,
    Color? searchBarcolor,
  }) {
    return MyColors(
      bottomNavigationBar: bottomNavigationBar ?? this.bottomNavigationBar,
      backGround3: backGround3 ?? this.backGround3,
      fillTextFeildColor: fillTextFeildColor ?? this.fillTextFeildColor,
      borderColor: borderColor ?? this.borderColor,
      backGround2: backGround2 ?? this.backGround2,
      mainFontColor2: mainFontColor2 ?? this.mainFontColor2,
      textButtomColor2: textButtomColor2 ?? this.textButtomColor2,
      buttomColor: buttomColor ?? this.buttomColor,
      backGround: backGround ?? this.backGround,
      mainFontColor: mainFontColor ?? this.mainFontColor,
      primaryFontColor: primaryFontColor ?? this.primaryFontColor,
      seconderyFontColor: seconderyFontColor ?? this.seconderyFontColor,
      blueColor: blueColor ?? this.blueColor,
      textButtomColor: textButtomColor ?? this.textButtomColor,
      hintTextColor: hintTextColor ?? this.hintTextColor,
      searchBarcolor: searchBarcolor ?? this.searchBarcolor,
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
      bottomNavigationBar:
          Color.lerp(bottomNavigationBar, other.bottomNavigationBar, t),
      backGround3: Color.lerp(backGround3, other.backGround3, t),
      fillTextFeildColor: Color.lerp(
        fillTextFeildColor,
        other.fillTextFeildColor,
        t,
      ),
      borderColor: Color.lerp(borderColor, other.borderColor, t),
      textButtomColor2: Color.lerp(textButtomColor2, other.textButtomColor2, t),
      buttomColor: Color.lerp(buttomColor, other.buttomColor, t),
      backGround2: Color.lerp(backGround2, other.backGround2, t),
      mainFontColor2: Color.lerp(mainFontColor2, other.mainFontColor2, t),
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
      searchBarcolor: Color.lerp(searchBarcolor, other.searchBarcolor, t),
      blueColor: Color.lerp(blueColor, other.blueColor, t),
      textButtomColor: Color.lerp(textButtomColor, other.textButtomColor, t),
      hintTextColor: Color.lerp(hintTextColor, other.hintTextColor, t),
    );
  }

  static const MyColors dark = MyColors(
      borderColor: ColorsDark.steelGrey,
      backGround2: ColorsDark.darkGrey,
      textButtomColor2: ColorsDark.lighterGrey,
      backGround: ColorsDark.navyBlue,
      bottomNavigationBar: ColorsLight.palePurple,
      mainFontColor: ColorsDark.lightPurple,
      primaryFontColor: ColorsDark.white,
      seconderyFontColor: ColorsDark.lighterGrey,
      blueColor: ColorsDark.blue,
      textButtomColor: ColorsDark.lighterGrey,
      hintTextColor: ColorsDark.palePurple,
      buttomColor: ColorsDark.grey,
      mainFontColor2: ColorsDark.white,
      backGround3: ColorsLight.navyBlue,
      fillTextFeildColor: ColorsDark.steelGrey,
      searchBarcolor: ColorsDark.lightGrey);

  static const MyColors light = MyColors(
    fillTextFeildColor: ColorsDark.white,
    bottomNavigationBar: ColorsLight.palePurple,
    backGround3: ColorsLight.lighterGray,
    borderColor: ColorsLight.palePurple,
    backGround2: ColorsLight.white,
    backGround: ColorsLight.white,
    mainFontColor: ColorsLight.black,
    primaryFontColor: ColorsLight.grey,
    seconderyFontColor: ColorsLight.blue,
    blueColor: ColorsLight.blue,
    textButtomColor: ColorsLight.white,
    hintTextColor: ColorsLight.grey,
    buttomColor: ColorsLight.white,
    textButtomColor2: ColorsLight.blue,
    mainFontColor2: ColorsLight.black,
    searchBarcolor: ColorsLight.lightPurple,
  );
}
