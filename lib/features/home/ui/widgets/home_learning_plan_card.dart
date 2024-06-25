import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tech_savvy/core/extension/context_extension.dart';
import 'package:tech_savvy/core/shared_perfernce/shared_key.dart';
import 'package:tech_savvy/core/shared_perfernce/shared_perfernce.dart';
import 'package:tech_savvy/core/style/color/colors_dark.dart';
import 'package:tech_savvy/core/style/color/colors_light.dart';
import 'package:tech_savvy/features/home/ui/widgets/home_progress_indicator_row.dart';

class HomeLearningPlanCard extends StatelessWidget {
  const HomeLearningPlanCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Container(
        decoration: BoxDecoration(
          color: context.color.backGround2,
          borderRadius: BorderRadius.circular(20.r),
          boxShadow: [
            BoxShadow(
              color: SharedPref().getBoolean(PrefKeys.themeMode)!
                  ? ColorsDark.lightGrey.withOpacity(.15)
                  : ColorsLight.lightGrey,
              spreadRadius: 2,
              blurRadius: 8,
              offset: const Offset(0, 8),
            ),
          ],
        ),
        width: 325.w,
        height: 133.h,
        padding: EdgeInsets.all(20.sp),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const ProgressIndicatorRow(
              label: 'Course Name1',
              currentValue: 40,
              maxValue: 48,
            ),
            SizedBox(height: 16.h),
            const ProgressIndicatorRow(
              label: 'Course Name2',
              currentValue: 6,
              maxValue: 24,
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
