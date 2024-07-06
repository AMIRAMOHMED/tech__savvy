import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tech_savvy/core/extension/context_extension.dart';
import 'package:tech_savvy/core/language/lang_key.dart';
import 'package:tech_savvy/core/style/fonts/app_styles.dart';
import 'package:tech_savvy/core/style/images/app_images.dart';
import 'package:tech_savvy/core/widgets/app_text.dart';
import 'package:tech_savvy/features/course/ui/widgets/main_course_screen/course_search_bar.dart';

class CourseScreenAppBar extends StatelessWidget {
  const CourseScreenAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 20.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextApp(
              text: context.translate(LangKeys.course),
              textAlign: TextAlign.center,
              style: AppStyles.font700Main26(context)
                  .copyWith(color: context.color.mainFontColor2),
            ),
            CircleAvatar(
              radius: 25.r,
              child: Image.asset(
                AppImages.profile,
              ),
            ),
          ],
        ),
        SizedBox(height: 8.h),
        const CourseSearchBar(),
      ],
    );
  }
}
