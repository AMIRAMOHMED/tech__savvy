import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tech_savvy/core/extension/context_extension.dart';
import 'package:tech_savvy/core/style/fonts/app_styles.dart';
import 'package:tech_savvy/core/widgets/app_text.dart';

class CourseDetailsContainerDescription extends StatelessWidget {
  const CourseDetailsContainerDescription({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextApp(
          text: 'About the course',
          style: AppStyles.font700Main22(context).copyWith(
            color: context.color.mainFontColor2,
          ),
        ),
        SizedBox(height: 5.h),
        TextApp(
          text: 'Sed ut perspiciatis unde omnis iste natus error...',
          style: AppStyles.font400primary16(context)
              .copyWith(color: context.color.primaryFontColor),
        ),
      ],
    );
  }
}
