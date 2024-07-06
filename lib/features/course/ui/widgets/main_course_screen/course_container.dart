import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tech_savvy/core/extension/context_extension.dart';
import 'package:tech_savvy/core/language/lang_key.dart';
import 'package:tech_savvy/core/routs/routes_models.dart';
import 'package:tech_savvy/core/shared_perfernce/shared_key.dart';
import 'package:tech_savvy/core/shared_perfernce/shared_perfernce.dart';
import 'package:tech_savvy/core/style/color/colors_dark.dart';
import 'package:tech_savvy/core/style/color/colors_light.dart';
import 'package:tech_savvy/core/style/fonts/app_styles.dart';
import 'package:tech_savvy/core/style/images/app_images.dart';
import 'package:tech_savvy/core/widgets/app_text.dart';

class CourseConatiner extends StatelessWidget {
  const CourseConatiner({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.pushName(courseDetails);
      },
      child: Container(
        decoration: BoxDecoration(
          color: context.color.backGround2,
          borderRadius: BorderRadius.circular(20.r),
          boxShadow: [
            BoxShadow(
              color: SharedPref().getBoolean(PrefKeys.themeMode)!
                  ? ColorsDark.lighterGrey.withOpacity(.01)
                  : ColorsLight.lightGrey,
              spreadRadius: 2,
              blurRadius: 8,
              offset: const Offset(0, 8),
            ),
          ],
        ),
        width: 360.w,
        height: 110.h,
        padding: EdgeInsets.all(20.sp),
        child: Row(
          children: [
            Image.asset(
              AppImages.courses,
              width: 80.h,
              height: 120.h,
            ),
            SizedBox(width: 30.w),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextApp(
                  text: context.translate(LangKeys.productDesignV1_0),
                  style: AppStyles.font500primary14(context).copyWith(
                    color: context.color.mainFontColor2 ?? Colors.black,
                  ),
                ),
                SizedBox(height: 5.h),
                Row(
                  children: [
                    Image.asset(AppImages.personIcon),
                    SizedBox(width: 5.w),
                    TextApp(
                      text: context.translate(LangKeys.robertsonConnie),
                      style: AppStyles.font400primary12(context).copyWith(
                        color: ColorsLight.palePurple,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 5.h),
                Row(
                  children: [
                    TextApp(
                      text: r'250$',
                      style: AppStyles.font700Main22(context).copyWith(
                        color: ColorsLight.blue,
                      ),
                    ),
                    SizedBox(width: 5.w),
                    Container(
                      width: 60.w,
                      height: 20.h,
                      decoration: BoxDecoration(
                        color: ColorsLight.pink,
                        borderRadius: BorderRadius.circular(20.r),
                      ),
                      child: Center(
                        child: TextApp(
                          text: context.translate(LangKeys.sixteenHours),
                          style: AppStyles.font400primary12(context).copyWith(
                            color: ColorsLight.orange,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
