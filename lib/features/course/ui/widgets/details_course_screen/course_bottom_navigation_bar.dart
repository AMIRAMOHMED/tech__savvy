import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tech_savvy/core/extension/context_extension.dart';
import 'package:tech_savvy/core/language/lang_key.dart';
import 'package:tech_savvy/core/shared_perfernce/shared_key.dart';
import 'package:tech_savvy/core/shared_perfernce/shared_perfernce.dart';
import 'package:tech_savvy/core/style/color/colors_dark.dart';
import 'package:tech_savvy/core/style/color/colors_light.dart';
import 'package:tech_savvy/core/style/fonts/app_styles.dart';
import 'package:tech_savvy/core/style/images/app_images.dart';
import 'package:tech_savvy/core/widgets/app_text_buttom.dart';

class CourseBottomNavigationBar extends StatelessWidget {
  const CourseBottomNavigationBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110.h,
      width: double.infinity,
      decoration: BoxDecoration(
        color: context.color.backGround2,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.r),
          topRight: Radius.circular(20.r),
        ),
        boxShadow: [
          BoxShadow(
            color: SharedPref().getBoolean(PrefKeys.themeMode)!
                ? ColorsDark.lighterGrey.withOpacity(.01)
                : ColorsLight.lightGrey,
            spreadRadius: 4,
            blurRadius: 12,
            offset: const Offset(8, 0),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(
            style: ButtonStyle(
              shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  side: const BorderSide(color: Colors.transparent),
                  borderRadius: BorderRadius.circular(16.0.r),
                ),
              ),
              fixedSize: WidgetStateProperty.all(
                Size(100.w, 60.h),
              ),
              backgroundColor: const WidgetStatePropertyAll(
                ColorsLight.pink,
              ),
            ),
            onPressed: () {},
            icon: Image.asset(
              AppImages.favoriteIcon,
            ),
          ),
          AppTextButton(
            onPressed: () {},
            buttonWidth: 180.w,
            buttonHeight: 60.h,
            buttonText: context.translate(LangKeys.course),
            textStyle: AppStyles.font500primary16(context)
                .copyWith(color: context.color.textButtomColor),
          ),
        ],
      ),
    );
  }
}
