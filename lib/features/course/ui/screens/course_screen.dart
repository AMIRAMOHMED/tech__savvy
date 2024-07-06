import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:tech_savvy/features/course/logic/cubit/video_cubit.dart';
import 'package:tech_savvy/features/course/ui/widgets/details_course_screen/course_bottom_navigation_bar.dart';
import 'package:tech_savvy/features/course/ui/widgets/details_course_screen/course_detalis.dart';
import 'package:tech_savvy/features/course/ui/widgets/details_course_screen/course_hero_image_container.dart';

class CourseScreen extends StatelessWidget {
  const CourseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BlocProvider(
          create: (_) => VideoCubit(),
          child: Builder(
            builder: (context) {
              return BlocBuilder<VideoCubit, VideoState>(
                builder: (context, state) {
                  final isVideoPlaying = state.videoPlayerController != null;

                  return SizedBox(
                    width: double.infinity,
                    child: Column(
                      children: [
                        CourseHeroImageContainer(
                          isVideoPlaying: isVideoPlaying,
                        ),
                        const CourseDetails(),
                      ],
                    ),
                  );
                },
              );
            },
          ),
        ),
      ),
      bottomNavigationBar: const CourseBottomNavigationBar(),
    );
  }
}
