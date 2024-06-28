import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tech_savvy/core/extension/context_extension.dart';
import 'package:tech_savvy/core/language/lang_key.dart';
import 'package:tech_savvy/core/style/color/colors_light.dart';
import 'package:tech_savvy/core/style/fonts/app_styles.dart';
import 'package:tech_savvy/core/widgets/app_text.dart';
import 'package:tech_savvy/features/home/ui/widgets/home_container_course.dart';

class HomeCourseListView extends StatelessWidget {
  const HomeCourseListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: 165.h,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 5,
            itemBuilder: (BuildContext context, int index) {
              return const HomeContainerCourse();
            },
          ),
        ),
        Positioned(
          top: 10.h,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.sp),
            child: FittedBox(
              fit: BoxFit.scaleDown,
              child: TextApp(
                text: context.translate(LangKeys.whatDoYouWantToLearnToday),
                style: AppStyles.font400primary16(context).copyWith(
                  color: ColorsLight.black,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
