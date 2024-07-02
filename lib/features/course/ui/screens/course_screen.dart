import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tech_savvy/features/course/ui/widgets/course_list_veiw.dart';
import 'package:tech_savvy/features/course/ui/widgets/course_list_veiw_container.dart';
import 'package:tech_savvy/features/course/ui/widgets/course_screen_app_bar.dart';
import 'package:tech_savvy/features/course/ui/widgets/news_popular_all_tab_bar.dart';

class CourseScreen extends StatelessWidget {
  const CourseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.sp),
            child: SizedBox(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CourseScreenAppBar(),
                  SizedBox(height: 20.h),
                  const CourseListViewContainer(),
                  const NewsPopularAllTabBar(),
                  const Expanded(child: CourseListVeiw()),
                  SizedBox(height: 5.h),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
