import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tech_savvy/features/course/ui/widgets/course_category_container.dart';
import 'package:tech_savvy/features/home/data/class/category_class.dart';

class CourseListViewContainer extends StatelessWidget {
  const CourseListViewContainer({super.key});

  @override
  Widget build(BuildContext context) {
    final categories = CourseCategories.categories(context);

    return SizedBox(
      height: 150.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (BuildContext context, int index) {
          return CourseCategoryContainer(
            category: categories[index],
          );
        },
      ),
    );
  }
}
