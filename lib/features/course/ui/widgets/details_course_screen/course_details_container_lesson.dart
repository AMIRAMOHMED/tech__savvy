import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tech_savvy/core/extension/context_extension.dart';
import 'package:tech_savvy/core/style/color/colors_light.dart';
import 'package:tech_savvy/core/style/fonts/app_styles.dart';
import 'package:tech_savvy/core/style/images/app_images.dart';
import 'package:tech_savvy/core/widgets/app_text.dart';
import 'package:tech_savvy/features/course/logic/cubit/video_cubit.dart';

class CourseDetailsContainerLesson extends StatelessWidget {
  const CourseDetailsContainerLesson({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TextApp(
          text: '01',
          style: AppStyles.font700Main32(context)
              .copyWith(color: ColorsLight.palePurple),
        ),
        SizedBox(width: 30.w),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextApp(
              text: 'Welcome To Courseeeeee',
              style: AppStyles.font400primary14(context)
                  .copyWith(color: context.color.mainFontColor2),
            ),
            Row(
              children: [
                TextApp(
                  text: '6:10 min',
                  style: AppStyles.font400primary16(context)
                      .copyWith(color: context.color.primaryFontColor),
                ),
                SizedBox(width: 5.w),
                CircleAvatar(
                  radius: 5.r,
                  backgroundColor: ColorsLight.orange,
                  child: const ImageIcon(
                    color: ColorsLight.white,
                    size: 40,
                    AssetImage(
                      AppImages.correctIcon,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
        const Spacer(),
        GestureDetector(
          onTap: () {
            context.read<VideoCubit>().initializeVideo(AppImages.testVideo);
          },
          child: CircleAvatar(
            radius: 20.r,
            backgroundColor: ColorsLight.blue,
            child: const ImageIcon(
              color: ColorsLight.white,
              size: 50,
              AssetImage(
                AppImages.playIcon,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
