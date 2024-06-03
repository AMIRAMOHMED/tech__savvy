import 'package:flutter/material.dart';
import 'package:tech_savvy/core/style/color/colors_dark.dart';
import 'package:tech_savvy/core/style/theme/color_extension.dart';
import 'package:tech_savvy/core/style/theme/image_extension.dart';

ThemeData themDark() {
  return ThemeData(
    extensions: const <ThemeExtension<dynamic>>[
      MyColors.dark,
      MyAssets.dark,
    ],
    scaffoldBackgroundColor: ColorsDark.navyBlue,
    useMaterial3: true,
  );
}

ThemeData themLight() {
  return ThemeData(
    extensions: const <ThemeExtension<dynamic>>[
      MyColors.light,
      MyAssets.light,
    ],
    scaffoldBackgroundColor: ColorsDark.white,
    useMaterial3: true,
  );
}
