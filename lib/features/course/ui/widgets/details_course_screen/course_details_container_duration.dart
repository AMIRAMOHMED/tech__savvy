import 'package:flutter/material.dart';
import 'package:tech_savvy/core/extension/context_extension.dart';
import 'package:tech_savvy/core/style/fonts/app_styles.dart';
import 'package:tech_savvy/core/widgets/app_text.dart';

class CourseDetailsContainerDuration extends StatelessWidget {
  const CourseDetailsContainerDuration({super.key});

  @override
  Widget build(BuildContext context) {
    return TextApp(
      text: '6h 14min, 24 lessons',
      style: AppStyles.font400primary16(context)
          .copyWith(color: context.color.primaryFontColor),
    );
  }
}
