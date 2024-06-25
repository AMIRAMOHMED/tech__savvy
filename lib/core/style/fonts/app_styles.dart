import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tech_savvy/core/extension/context_extension.dart';
import 'package:tech_savvy/core/style/fonts/font_family_helper.dart';
import 'package:tech_savvy/core/style/fonts/font_weight_helper.dart';

class AppStyles {
  static TextStyle font700Main22(BuildContext context) {
    return context.textStyle.copyWith(
      fontWeight: FontWeightHelper.bold,
      fontFamily: FontFamilyHelper.geLocalozedFontFamily(),
      fontSize: 22.sp,
    );
  }

static TextStyle font700Main26(BuildContext context) {
    return context.textStyle.copyWith(
      fontWeight: FontWeightHelper.bold,
      fontFamily: FontFamilyHelper.geLocalozedFontFamily(),
      fontSize: 26.sp,
    );
  }
  static TextStyle font700Main12(BuildContext context) {
    return context.textStyle.copyWith(
      fontWeight: FontWeightHelper.bold,
      fontFamily: FontFamilyHelper.geLocalozedFontFamily(),
      fontSize: 12.sp,
    );
  }


 static TextStyle font700Main32(BuildContext context) {
    return context.textStyle.copyWith(
      fontWeight: FontWeightHelper.bold,
      fontFamily: FontFamilyHelper.geLocalozedFontFamily(),
      fontSize: 32.sp,
    );
  }



  static TextStyle font400primary16(BuildContext context) {
    return context.textStyle.copyWith(
      fontWeight: FontWeightHelper.regular,
      fontFamily: FontFamilyHelper.geLocalozedFontFamily(),
      fontSize: 16.sp,
    );
  }

  static TextStyle font400primary14(BuildContext context) {
    return context.textStyle.copyWith(
      fontWeight: FontWeightHelper.regular,
      fontFamily: FontFamilyHelper.geLocalozedFontFamily(),
      fontSize: 14.sp,
    );
  }

  static TextStyle font500primary16(BuildContext context) {
    return context.textStyle.copyWith(
      fontWeight: FontWeightHelper.medium,
      fontFamily: FontFamilyHelper.geLocalozedFontFamily(),
      fontSize: 16.sp,
    );
  }
  static TextStyle font400primary12(BuildContext context) {
    return context.textStyle.copyWith(
      fontWeight: FontWeightHelper.regular,
      fontFamily: FontFamilyHelper.geLocalozedFontFamily(),
      fontSize: 12.sp,
    );
  }
}
