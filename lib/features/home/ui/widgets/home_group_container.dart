import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tech_savvy/core/extension/context_extension.dart';
import 'package:tech_savvy/core/language/lang_key.dart';
import 'package:tech_savvy/core/style/color/colors_dark.dart';
import 'package:tech_savvy/core/style/color/colors_light.dart';
import 'package:tech_savvy/core/style/fonts/app_styles.dart';
import 'package:tech_savvy/core/style/images/app_images.dart';
import 'package:tech_savvy/core/widgets/app_text.dart';

class HomeGroupContainer extends StatelessWidget {
  const HomeGroupContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.sp),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.sp),
        width: 325.w,
        height: 110.h,
        decoration: BoxDecoration(
          color: ColorsDark.lightLavender,
          borderRadius: BorderRadius.circular(20.r),
        ),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextApp(
                    text: context.translate(LangKeys.meetup),
                    style: AppStyles.font700Main22(context),
                  ),
                  SizedBox(height: 5.h),
                  TextApp(
                    text: context.translate(
                      LangKeys.offlineExchangeOfLearningExperiences,
                    ),
                    style: AppStyles.font400primary12(context),
                  ),
                ],
              ),
            ),
            SizedBox(width: 10.w),
            Stack(
              alignment: Alignment.center,
              children: [
                CircleAvatar(
                  radius: 55.r,
                  backgroundColor: ColorsLight.lighterPurple,
                ),
                CircleAvatar(
                  radius: 35.r,
                  backgroundColor: ColorsLight.lightPurple2,
                ),
                Positioned(
                  left: 5.r,
                  bottom: 10.r,
                  child: CircleAvatar(
                    radius: 20.r,
                    backgroundImage: const AssetImage(AppImages.groupAvatar1),
                  ),
                ),
                Positioned(
                  top: 20.r,
                  child: CircleAvatar(
                    radius: 20.r,
                    backgroundImage: const AssetImage(AppImages.groupAvatar2),
                  ),
                ),
                Positioned(
                  right: 5.r,
                  bottom: 10.r,
                  child: CircleAvatar(
                    radius: 20.r,
                    backgroundImage: const AssetImage(AppImages.groupAvatar3),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
