import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tech_savvy/features/course/ui/widgets/details_course_screen/course_details_container_lesson.dart';

class CourseDetailsContainerLessonListVeiw extends StatelessWidget {
  const CourseDetailsContainerLessonListVeiw({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.h,
      child: ListView.builder(
        itemCount: 5,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding:  EdgeInsets.only(bottom: 15.h),
            child: const CourseDetailsContainerLesson(),
          );
        },
      ),
    );
  }
}
