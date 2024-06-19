import 'package:flutter/material.dart';
import 'package:tech_savvy/core/extension/context_extension.dart';
import 'package:tech_savvy/core/language/lang_key.dart';
import 'package:tech_savvy/features/onboarding/ui/widgets/on_boarding_body.dart.dart';

List<Widget> getOnboardingPages(BuildContext context, bool isArabic, 
PageController pageController,) {
  final pages = [
    OnboardingBody(
      title: context.translate(LangKeys.freeTrialCourses),
      description: context.translate(LangKeys.freeCoursesFindPath),
      imagePath: context.assets.onBoarding1 ?? '',
      showSkipButton: true,
      onSkip: () {
        pageController.jumpToPage(isArabic ? 0 : 2);
      },
    ),
    OnboardingBody(
      title: context.translate(LangKeys.quickEasyLearning),
      description: context.translate(LangKeys.easyFastLearning),
      imagePath: context.assets.onBoarding2 ?? '',
      showSkipButton: true,
      onSkip: () {
        pageController.jumpToPage(isArabic ? 0 : 2);
      },
    ),
    OnboardingBody(
      title: context.translate(LangKeys.createStudyPlan),
      description: context.translate(LangKeys.studyPlanMotivated),
      imagePath: context.assets.onBoarding3 ?? '',
      showLoginAndSignUpButtons: true,
    ),
  ];
  return isArabic ? pages.reversed.toList() : pages;
}
