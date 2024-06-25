import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tech_savvy/features/home/ui/widgets/home_container_course.dart';

class HomeCourseListView extends StatelessWidget {
  const HomeCourseListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 165.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        
        itemBuilder: (BuildContext context, int index) {
          return const HomeContainerCourse();
        },
      ),
    );
  }
}
