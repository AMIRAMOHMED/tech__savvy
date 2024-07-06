// ignore_for_file: always_put_required_named_parameters_first

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tech_savvy/core/style/fonts/app_styles.dart';
import 'package:tech_savvy/core/widgets/app_text.dart';
import 'package:tech_savvy/features/home/data/class/category_class.dart';

class CourseCategoryContainer extends StatelessWidget {
  const CourseCategoryContainer({
    super.key,
    required this.category,
  });
  final CourseCategory category;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        // Main container
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.sp),
          child: Container(
            width: 160.w,
            height: 100.h,
            decoration: BoxDecoration(
              color: category.colorContainer,
              borderRadius: BorderRadius.circular(20.r),
            ),
            child: const SizedBox.shrink(),
          ),
        ),
        // Positioned image
        Positioned(
          right: 70.w,
          top: -20.h,
          bottom: 60.h,
          child: SizedBox(
            width: 110.w,
            height: 140.h,
            child: OverflowBox(
              maxWidth: 110.w,
              maxHeight: 140.h,
              child: Image.asset(
                category.picture,
                height: 135.h,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        // Positioned title container
        Positioned(
          top: 70.h,
          left: 85.w,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 10.sp),
            decoration: BoxDecoration(
              color: category.colorSmallContainer,
              borderRadius: BorderRadius.circular(20.r),
            ),
            child: TextApp(
              text: category.title,
              textAlign: TextAlign.center,
              style: AppStyles.font500primary18(context)
                  .copyWith(color: category.colorText),
            ),
          ),
        ),
      ],
    );
  }
}
