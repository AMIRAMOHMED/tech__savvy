import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tech_savvy/core/extension/context_extension.dart';
import 'package:tech_savvy/core/language/lang_key.dart';
import 'package:tech_savvy/core/style/color/colors_dark.dart';
import 'package:tech_savvy/core/style/fonts/app_styles.dart';
import 'package:tech_savvy/core/style/images/app_images.dart';
import 'package:tech_savvy/core/widgets/app_text.dart';

class HomeTopBar extends StatelessWidget {
  const HomeTopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.sp),
      width: double.infinity,
      height: 200.h,
      color: context.color.blueColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextApp(
                text: 'hi Kerisrinn',
                style: AppStyles.font700Main26(context)
                    .copyWith(color: ColorsDark.white),
              ),
              SizedBox(height: 10.h),
              TextApp(
                text: context.translate(LangKeys.letsStartLearning),
                style: AppStyles.font400primary14(context)
                    .copyWith(color: ColorsDark.white),
              ),
            ],
          ),
          CircleAvatar(
            child: Image.asset(
              AppImages.profile,
              height: 120.h,
              width: 80.w,
            ),
          ),
        ],
      ),
    );
  }
}
