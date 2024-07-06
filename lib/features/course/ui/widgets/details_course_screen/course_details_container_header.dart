import 'package:flutter/material.dart';
import 'package:tech_savvy/core/extension/context_extension.dart';
import 'package:tech_savvy/core/language/lang_key.dart';
import 'package:tech_savvy/core/style/fonts/app_styles.dart';
import 'package:tech_savvy/core/widgets/app_text.dart';

class CourseDetailsContainerHeader extends StatelessWidget {
  const CourseDetailsContainerHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TextApp(
          text: context.translate(LangKeys.productDesignV1_0),
          style: AppStyles.font700Main22(context).copyWith(color: Colors.black),
        ),
        const Spacer(),
        TextApp(
          text: r'250$',
          style: AppStyles.font700Main22
          (context).copyWith(color: context.color.blueColor),
        ),
      ],
    );
  }
}
