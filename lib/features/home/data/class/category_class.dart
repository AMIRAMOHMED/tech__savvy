import 'package:flutter/material.dart';
import 'package:tech_savvy/core/language/lang_key.dart';
import 'package:tech_savvy/core/style/color/colors_light.dart';
import 'package:tech_savvy/core/style/images/app_images.dart';
import 'package:tech_savvy/core/extension/context_extension.dart';

class CourseCategory {
  CourseCategory({
    required this.picture,
    required this.title,
    required this.colorContainer,
    required this.colorText,
    required this.colorSmallContainer,
  });
  final String picture;
  final String title;
  final Color colorContainer;
  final Color colorText;
  final Color colorSmallContainer;
}

class CourseCategories {
  static List<CourseCategory> categories(BuildContext context) {
    return [
      CourseCategory(
        picture: AppImages.illustration,
        title: context.translate(LangKeys.painting),
        colorContainer: Colors.blue,
        colorText: ColorsLight.blue,
        colorSmallContainer: ColorsLight.navyBlue,
      ),
      CourseCategory(
        picture: AppImages.onBoarding1Dark,
        title: context.translate(LangKeys.language),
        colorContainer: ColorsLight.lightLavender,
        colorText: ColorsLight.deepPurple,
        colorSmallContainer: ColorsLight.lightPurple,
      ),
    ];
  }
}
