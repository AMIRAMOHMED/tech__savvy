import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tech_savvy/core/extension/context_extension.dart';
import 'package:tech_savvy/core/language/lang_key.dart';
import 'package:tech_savvy/core/style/color/colors_dark.dart';
import 'package:tech_savvy/core/style/fonts/app_styles.dart';

import 'package:tech_savvy/core/style/images/app_images.dart';
import 'package:tech_savvy/core/widgets/app_text.dart';

class HomeCourseListView extends StatelessWidget {
  const HomeCourseListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.sp),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.sp),
        width: 260.w,
        height: 150.h,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: Image.asset(AppImages.homeLightBluePattern).image,
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 20.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextApp(
                    text: 'Course name',
                    style: AppStyles.font500primary16(context).copyWith(
                      color: ColorsDark.navyBlue,
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: ColorsDark.orange,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: TextApp(
                      text: context.translate(LangKeys.getStarted),
                      style: AppStyles.font700Main12(context).copyWith(
                        color: ColorsDark.white,
                      ),
                    ),
                  ),
                ],
              ),
              Image.asset(AppImages.illustration, height: 100.h),
            ],
          ),
        ),
      ),
    );
  }
}
