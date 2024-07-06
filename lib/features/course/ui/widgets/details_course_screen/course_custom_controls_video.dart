import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tech_savvy/core/style/color/colors_light.dart';

class CourseCustomControlsVideo extends StatelessWidget {
  const CourseCustomControlsVideo({super.key});

  @override
  Widget build(BuildContext context) {
    final chewieController = ChewieController.of(context);

    return Stack(
      children: <Widget>[
        _buildTopBar(chewieController),
        _buildPlayPauseButton(chewieController),
        _buildBottomBar(chewieController),
      ],
    );
  }

  Widget _buildTopBar(ChewieController controller) {
    return Align(
      alignment: AlignmentDirectional.topCenter,
      child: Container(
        height: 90.h,
        color: Colors.transparent,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            const Spacer(),
            IconButton(
              icon: const Icon(
                Icons.fullscreen,
                color: ColorsLight.orange,
                size: 40,
              ),
              onPressed: () {
                controller.enterFullScreen();
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPlayPauseButton(ChewieController controller) {
    return Center(
      child: IconButton(
        icon: Icon(
          controller.isPlaying
              ? Icons.pause_circle_filled
              : Icons.play_circle_filled,
          color: Colors.white,
          size: 64,
        ),
        onPressed: () {
          controller.isPlaying ? controller.pause() : controller.play();
        },
      ),
    );
  }

  Widget _buildBottomBar(ChewieController controller) {
    return Align(
      alignment: AlignmentDirectional.bottomCenter,
      child: Container(
        height: 90.h,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        color: Colors.transparent,
        child: Row(
          children: <Widget>[
            Text(
              _formatDuration(controller.videoPlayerController.value.position),
              style: const TextStyle(color: ColorsLight.white),
            ),
            Expanded(
              child: Slider(
                activeColor: ColorsLight.orange,
                inactiveColor: ColorsLight.white,
                thumbColor: ColorsLight.orange,
                value: controller.videoPlayerController.value.position.inSeconds
                    .toDouble(),
                max: controller.videoPlayerController.value.duration.inSeconds
                    .toDouble(),
                onChanged: (value) {
                  controller.seekTo(Duration(seconds: value.toInt()));
                },
              ),
            ),
            Text(
              _formatDuration(controller.videoPlayerController.value.duration),
              style: const TextStyle(color: ColorsLight.orange),
            ),
          ],
        ),
      ),
    );
  }

  String _formatDuration(Duration duration) {
    String twoDigits(int n) => n.toString().padLeft(2, '0');
    final minutes = twoDigits(duration.inMinutes.remainder(60));
    final seconds = twoDigits(duration.inSeconds.remainder(60));
    return '$minutes:$seconds';
  }
}
