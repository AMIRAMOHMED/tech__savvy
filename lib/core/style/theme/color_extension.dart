import 'package:flutter/material.dart';
import 'package:tech_savvy/core/style/color/colors_dark.dart';
import 'package:tech_savvy/core/style/color/colors_light.dart';

class MyColors extends ThemeExtension<MyColors> {
  const MyColors({
    required this.lightPurple,
    required this.white,
    required this.blue,
    required this.grey,
    required this.lightGrey,
    required this.palePurple,
    required this.darkGrey,
    required this.navyBlue,
    required this.orange,
    required this.lightLavender,
    required this.deepPurple,
    required this.steelGrey,
    required this.pink,
    required this.yellow,
  });

  final Color? lightPurple;
  final Color? white;
  final Color? blue;
  final Color? grey;
  final Color? lightGrey;
  final Color? palePurple;
  final Color? darkGrey;
  final Color? navyBlue;
  final Color? orange;
  final Color? lightLavender;
  final Color? deepPurple;
  final Color? steelGrey;
  final Color? pink;
  final Color? yellow;

  @override
  ThemeExtension<MyColors> copyWith({
    Color? lightPurple,
    Color? white,
    Color? blue,
    Color? grey,
    Color? lightGrey,
    Color? palePurple,
    Color? darkGrey,
    Color? navyBlue,
    Color? orange,
    Color? lightLavender,
    Color? deepPurple,
    Color? steelGrey,
    Color? pink,
    Color? yellow,
  }) {
    return MyColors(
      lightPurple: lightPurple ?? this.lightPurple,
      white: white ?? this.white,
      blue: blue ?? this.blue,
      grey: grey ?? this.grey,
      lightGrey: lightGrey ?? this.lightGrey,
      palePurple: palePurple ?? this.palePurple,
      darkGrey: darkGrey ?? this.darkGrey,
      navyBlue: navyBlue ?? this.navyBlue,
      orange: orange ?? this.orange,
      lightLavender: lightLavender ?? this.lightLavender,
      deepPurple: deepPurple ?? this.deepPurple,
      steelGrey: steelGrey ?? this.steelGrey,
      pink: pink ?? this.pink,
      yellow: yellow ?? this.yellow,
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
      lightPurple: Color.lerp(lightPurple, other.lightPurple, t),
      white: Color.lerp(white, other.white, t),
      blue: Color.lerp(blue, other.blue, t),
      grey: Color.lerp(grey, other.grey, t),
      lightGrey: Color.lerp(lightGrey, other.lightGrey, t),
      palePurple: Color.lerp(palePurple, other.palePurple, t),
      darkGrey: Color.lerp(darkGrey, other.darkGrey, t),
      navyBlue: Color.lerp(navyBlue, other.navyBlue, t),
      orange: Color.lerp(orange, other.orange, t),
      lightLavender: Color.lerp(lightLavender, other.lightLavender, t),
      deepPurple: Color.lerp(deepPurple, other.deepPurple, t),
      steelGrey: Color.lerp(steelGrey, other.steelGrey, t),
      pink: Color.lerp(pink, other.pink, t),
      yellow: Color.lerp(yellow, other.yellow, t),
    );
  }

  static const MyColors dark = MyColors(
    lightPurple: ColorsDark.lightPurple,
    white: ColorsDark.white,
    blue: ColorsDark.blue,
    grey: ColorsDark.grey,
    lightGrey: ColorsDark.lightGrey,
    palePurple: ColorsDark.palePurple,
    darkGrey: ColorsDark.darkGrey,
    navyBlue: ColorsDark.navyBlue,
    orange: ColorsDark.orange,
    lightLavender: ColorsDark.lightLavender,
    deepPurple: ColorsDark.deepPurple,
    steelGrey: ColorsDark.steelGrey,
    pink: ColorsDark.pink,
    yellow: ColorsDark.yellow,
  );

  static const MyColors light = MyColors(
    lightPurple: ColorsLight.lightPurple,
    white: ColorsLight.white,
    blue: ColorsLight.blue,
    grey: ColorsLight.grey,
    lightGrey: ColorsLight.lightGrey,
    palePurple: ColorsLight.palePurple,
    darkGrey: ColorsDark.darkGrey,
    navyBlue: ColorsLight.navyBlue,
    orange: ColorsLight.orange,
    lightLavender: ColorsLight.lightLavender,
    deepPurple: ColorsLight.deepPurple,
    steelGrey: ColorsDark.steelGrey,
    pink: ColorsLight.pink,
    yellow: ColorsDark.yellow,
  );
}
