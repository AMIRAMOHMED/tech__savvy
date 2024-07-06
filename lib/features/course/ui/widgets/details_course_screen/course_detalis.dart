import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tech_savvy/core/extension/context_extension.dart';
import 'package:tech_savvy/features/course/ui/widgets/details_course_screen/course_details_container_description.dart';
import 'package:tech_savvy/features/course/ui/widgets/details_course_screen/course_details_container_duration.dart';
import 'package:tech_savvy/features/course/ui/widgets/details_course_screen/course_details_container_header.dart';
import 'package:tech_savvy/features/course/ui/widgets/details_course_screen/course_details_container_lesson_list_veiw.dart';

class CourseDetails extends StatelessWidget {
  const CourseDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          color: context.color.backGround2,
          
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20.h),
              const CourseDetailsContainerHeader(),
              SizedBox(height: 5.h),
              const CourseDetailsContainerDuration(),
              SizedBox(height: 20.h),
              const CourseDetailsContainerDescription(),
              SizedBox(height: 20.h),
              const Expanded(
                child: CourseDetailsContainerLessonListVeiw(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
