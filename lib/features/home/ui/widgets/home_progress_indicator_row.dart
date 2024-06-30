import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tech_savvy/core/extension/context_extension.dart';
import 'package:tech_savvy/core/style/color/colors_dark.dart';
import 'package:tech_savvy/core/style/color/colors_light.dart';
import 'package:tech_savvy/core/style/fonts/app_styles.dart';

class ProgressIndicatorRow extends StatelessWidget {
  const ProgressIndicatorRow({
    required this.label,
    required this.currentValue,
    required this.maxValue,
    super.key,
  });
  final String label;
  final int currentValue;
  final int maxValue;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          height: 24.w,
          width: 24.w,
          child: CircularProgressIndicator(
            value: currentValue / maxValue,
            backgroundColor: ColorsDark.lighterGrey,
            valueColor:
                const AlwaysStoppedAnimation<Color>(ColorsLight.darkGrey),
            strokeWidth: 3.w,
          ),
        ),
        SizedBox(width: 12.w),
        Expanded(
          child: Text(
            label,
            style: AppStyles.font500primary16(context).copyWith(
              color: context.color.mainFontColor2,
            ),
          ),
        ),
        Text(
          '$currentValue',
          style: AppStyles.font500primary16(context).copyWith(
            color: context.color.mainFontColor2,
          ),
        ),
        Text(
          '/$maxValue',
          style: AppStyles.font500primary16(context).copyWith(
            color: ColorsLight.lighterGray,
          ),
        ),
      ],
    );
  }
}
