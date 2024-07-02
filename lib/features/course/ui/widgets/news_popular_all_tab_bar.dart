import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tech_savvy/core/extension/context_extension.dart';
import 'package:tech_savvy/core/language/lang_key.dart';
import 'package:tech_savvy/core/style/color/colors_dark.dart';
import 'package:tech_savvy/core/style/fonts/app_styles.dart';
import 'package:tech_savvy/core/widgets/app_text.dart';

class NewsPopularAllTabBar extends StatelessWidget {
  const NewsPopularAllTabBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextApp(
          text: context.translate(LangKeys.choiceYourCourse),
          style: AppStyles.font500primary18(context)
              .copyWith(color: context.color.mainFontColor2 ?? Colors.black),
        ),
        SizedBox(height: 20.h),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20.sp),
          width: double.infinity,
          height: 35.h,
          child: Row(
            children: [
              _buildTabButton(
                context,
                text: context.translate(LangKeys.course),
                color: context.color.blueColor ?? Colors.blue,
                width: 75.w,
                height: 35.h,
              ),
              SizedBox(width: 8.w), 
              _buildTabButton(
                context,
                text: context.translate(LangKeys.course),
                color: context.color.buttomColor ?? Colors.grey,
                width: 75.w,
                height: 30.h,
              ),
              SizedBox(width: 8.w), 
              _buildTabButton(
                context,
                text: context.translate(LangKeys.course),
                color: context.color.buttomColor ?? Colors.grey,
                width: 75.w,
                height: 30.h,
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildTabButton(
    BuildContext context, {
    required String text,
    required Color color,
    required double width,
    required double height,
  }) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20.r),
      ),
      child: Center(
        child: TextApp(
          text: text,
          style: AppStyles.font400primary14(context)
              .copyWith(color: ColorsDark.white),
        ),
      ),
    );
  }
}
