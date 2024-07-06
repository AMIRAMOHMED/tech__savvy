import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:tech_savvy/features/course/logic/cubit/video_cubit.dart';
import 'package:tech_savvy/features/course/ui/widgets/details_course_screen/course_custom_controls_video.dart';

class VideoPlayerItem extends StatelessWidget {
  const VideoPlayerItem({
    required this.videoAssets,
    required this.height,
    super.key,
  });

  final String videoAssets;
  final double height;

  @override
  Widget build(BuildContext context) {
    return VideoPlayerView(height: height);
  }
}

class VideoPlayerView extends StatelessWidget {
  const VideoPlayerView({
    required this.height,
    super.key,
  });

  final double height;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<VideoCubit, VideoState>(
      builder: (context, state) {
        if (state.isError) {
          return const Center(child: Text('Failed to load video'));
        }

        if (state.videoPlayerController == null ||
            !state.videoPlayerController!.value.isInitialized) {
          return const Center(child: CircularProgressIndicator());
        }

        final chewieController = ChewieController(
          videoPlayerController: state.videoPlayerController!,
          customControls: const CourseCustomControlsVideo(),
          aspectRatio: state.videoPlayerController!.value.aspectRatio,
        );

        return Center(
          child: SizedBox(
            height: height,
            child: Chewie(
              controller: chewieController,
            ),
          ),
        );
      },
    );
  }
}
