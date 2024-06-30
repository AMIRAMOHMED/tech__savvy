import 'package:flutter/material.dart';
import 'package:tech_savvy/features/course/ui/widgets/course_screen_app_bar.dart';

class CourseScreen extends StatelessWidget {
  const CourseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            children: [
              CourseScreenAppBar(),
            ],
          ),
        ),
      ),
    );
  }
}
