import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tech_savvy/features/course/ui/widgets/main_course_screen/course_container.dart';

class CourseListVeiw extends StatelessWidget {
  const CourseListVeiw({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 165.h,
      child: ListView.builder(
        itemCount: 5,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: EdgeInsets.only(bottom: 15.h),
            child: const CourseConatiner(),
          );
        },
      ),
    );
  }
}
