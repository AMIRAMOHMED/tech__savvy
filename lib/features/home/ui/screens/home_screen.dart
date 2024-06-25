import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tech_savvy/core/extension/context_extension.dart';
import 'package:tech_savvy/core/language/lang_key.dart';
import 'package:tech_savvy/core/style/color/colors_dark.dart';
import 'package:tech_savvy/core/style/fonts/app_styles.dart';
import 'package:tech_savvy/core/widgets/app_text.dart';
import 'package:tech_savvy/features/home/ui/widgets/home_course_list_view.dart';
import 'package:tech_savvy/features/home/ui/widgets/home_top_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const HomeTopBar(),
              SizedBox(height: 20.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.sp),
                child: FittedBox(
                  fit: BoxFit.scaleDown,
                  child: TextApp(
                    text: context.translate(LangKeys.whatDoYouWantToLearnToday),
                    style: AppStyles.font700Main22(context).copyWith(
                      color: ColorsDark.navyBlue,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20.h),
              const HomeCourseListView(),
            ],
          ),
        ),
      ),
    );
  }
}
