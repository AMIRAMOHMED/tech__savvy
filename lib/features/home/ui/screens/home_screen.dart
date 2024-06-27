import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tech_savvy/core/extension/context_extension.dart';
import 'package:tech_savvy/core/language/lang_key.dart';
import 'package:tech_savvy/core/style/fonts/app_styles.dart';
import 'package:tech_savvy/core/widgets/app_text.dart';
import 'package:tech_savvy/features/home/ui/widgets/home_course_list_view.dart';
import 'package:tech_savvy/features/home/ui/widgets/home_group_container.dart';
import 'package:tech_savvy/features/home/ui/widgets/home_learning_plan_card.dart';
import 'package:tech_savvy/features/home/ui/widgets/home_top_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const HomeTopBar(),
              SizedBox(height: 10.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.sp),
                child: TextApp(
                  text: context.translate(LangKeys.whatDoYouWantToLearnToday),
                  style: AppStyles.font500primary18(context).copyWith(
                    color: context.color.mainFontColor2,
                  ),
                ),
              ),
              SizedBox(height: 10.h),
              const HomeCourseListView(),
              SizedBox(height: 10.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.sp),
                child: TextApp(
                  text: context.translate(LangKeys.learningPlan),
                  style: AppStyles.font500primary18(context).copyWith(
                    color: context.color.mainFontColor2,
                  ),
                ),
              ),
              SizedBox(height: 10.h),
              const HomeLearningPlanCard(),
              SizedBox(height: 10.h),
              const HomeGroupContainer(),
            ],
          ),
        ),
      ),
    );
  }
}
