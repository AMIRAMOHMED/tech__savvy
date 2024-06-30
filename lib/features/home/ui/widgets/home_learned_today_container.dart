import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tech_savvy/core/extension/context_extension.dart';
import 'package:tech_savvy/core/language/lang_key.dart';
import 'package:tech_savvy/core/shared_perfernce/shared_key.dart';
import 'package:tech_savvy/core/shared_perfernce/shared_perfernce.dart';
import 'package:tech_savvy/core/style/color/colors_dark.dart';
import 'package:tech_savvy/core/style/color/colors_light.dart';
import 'package:tech_savvy/core/style/fonts/app_styles.dart';

import 'package:tech_savvy/core/widgets/app_text.dart';

class HomeLearnedTodayContainer extends StatelessWidget {
  const HomeLearnedTodayContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    const achiveValue = 60;
    const targetValue = 100;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.sp),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.sp),
        width: 325.w,
        height: 90.h,
        decoration: BoxDecoration(
          color: context.color.backGround2,
          borderRadius: BorderRadius.circular(10.r),
          boxShadow: [
            BoxShadow(
              color: SharedPref().getBoolean(PrefKeys.themeMode)!
                  ? ColorsDark.lighterGrey.withOpacity(.15)
                  : ColorsLight.lightGrey,
              spreadRadius: 2,
              blurRadius: 8,
              offset: const Offset(0, 8),
            ),
          ],
        ),
        child: Column(
          children: [
            SizedBox(
              height: 5.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextApp(
                  text: context.translate(
                    LangKeys.learnedToday,
                  ),
                  style: AppStyles.font400primary12(context).copyWith(
                    color: context.color.hintTextColor,
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: TextApp(
                    text: context.translate(
                      LangKeys.myCourses,
                    ),
                    style: AppStyles.font400primary12(context).copyWith(
                      color: context.color.blueColor,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  '$achiveValue ${context.translate(
                    LangKeys.min,
                  )} / ',
                  style: AppStyles.font500primary16(context).copyWith(
                    color: context.color.mainFontColor2,
                  ),
                ),
                Text(
                  '$targetValue ${context.translate(
                    LangKeys.min,
                  )}',
                  style: AppStyles.font500primary16(context).copyWith(
                    color: ColorsLight.lighterGray,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10.h,
            ),
            LinearProgressIndicator(
              minHeight: 5.h,
              value: achiveValue / targetValue,
              backgroundColor: ColorsDark.lighterGrey,
              valueColor:
                  const AlwaysStoppedAnimation<Color>(ColorsLight.orange),
            ),
          ],
        ),
      ),
    );
  }
}
