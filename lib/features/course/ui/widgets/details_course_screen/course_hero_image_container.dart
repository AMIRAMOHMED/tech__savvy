import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tech_savvy/core/extension/context_extension.dart';
import 'package:tech_savvy/core/language/lang_key.dart';
import 'package:tech_savvy/core/style/fonts/app_styles.dart';
import 'package:tech_savvy/core/style/images/app_images.dart';
import 'package:tech_savvy/core/widgets/app_text.dart';
import 'package:tech_savvy/features/course/ui/widgets/details_course_screen/course_video_container.dart';

class CourseHeroImageContainer extends StatelessWidget {
  const CourseHeroImageContainer({
    required this.isVideoPlaying,
    super.key,
  });

  final bool isVideoPlaying;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 230.h,
      decoration: BoxDecoration(
        image: !isVideoPlaying
            ? const DecorationImage(
                image: AssetImage(AppImages.courses),
                fit: BoxFit.cover,
              )
            : null,
      ),
      child: !isVideoPlaying
          ? Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 100.h,
                    child: Align(
                      alignment: AlignmentDirectional.topStart,
                      child: IconButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        icon: Image.asset(
                          AppImages.backArrowIcon,
                        ),
                      ),
                    ),
                  ),
                  TextApp(
                    text: context.translate(
                      LangKeys.productDesignV1_0,
                    ),
                    style: AppStyles.font700Main22(context).copyWith(
                      color: context.color.mainFontColor2,
                    ),
                  ),
                ],
              ),
            )
          : VideoPlayerItem(
              videoAssets: AppImages.testVideo,
              height: 230.h,
            ),
    );
  }
}
