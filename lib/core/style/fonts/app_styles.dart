import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tech_savvy/core/extension/context_extension.dart';
import 'package:tech_savvy/core/style/fonts/font_family_helper.dart';
import 'package:tech_savvy/core/style/fonts/font_weight_helper.dart';

class AppStyles {
  static TextStyle font700Main(BuildContext context) {
    return context.textStyle.copyWith(
      color: context.color.mainFontColor,
      fontWeight: FontWeightHelper.bold,
      fontFamily: FontFamilyHelper.geLocalozedFontFamily(),
      fontSize: 22.sp,
    );
  }

  static TextStyle font400primary(BuildContext context) {
    return context.textStyle.copyWith(
      color: context.color.primaryFontColor,
      fontWeight: FontWeightHelper.regular,
      fontFamily: FontFamilyHelper.geLocalozedFontFamily(),
      fontSize: 16.sp,
    );
  }
}
