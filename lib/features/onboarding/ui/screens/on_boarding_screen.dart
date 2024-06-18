import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tech_savvy/core/app/app_cubit/app_cubit.dart';
import 'package:tech_savvy/core/commanwidgets/text_widget.dart';
import 'package:tech_savvy/core/extension/context_extension.dart';
import 'package:tech_savvy/core/language/app_localizations.dart';
import 'package:tech_savvy/core/language/lang_key.dart';
import 'package:tech_savvy/core/style/fonts/app_styles.dart';
import 'package:tech_savvy/features/onboarding/logic/cubit/onboarding_cubit.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  bool _isArabic(BuildContext context) {
    return AppLocalizations.of(context)?.locale.languageCode == 'ar';
  }

  @override
  Widget build(BuildContext context) {
    final isArabic = _isArabic(context);
    final pageController = PageController(initialPage: isArabic ? 2 : 0);
    final pages =
        isArabic ? _getArabicPages(context) : _getEnglishPages(context);
    final cubit = context.read<AppCubit>();
    return SafeArea(
      child: Scaffold(
        backgroundColor: context.color.backGround,
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.sp, vertical: 20.sp),
              child: BlocBuilder(
                bloc: cubit,
                builder: (context, state) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: cubit.chansngeTheme,
                        icon: cubit.isDark
                            ? const Icon(FontAwesomeIcons.sun)
                            : const Icon(FontAwesomeIcons.moon),
                        color: context.color.seconderyFontColor,
                        iconSize: 30.sp,
                      ),
                      IconButton(
                        onPressed: () {
                          if (AppLocalizations.of(context)!.isEnLocale) {
                            cubit.toArbic();
                          } else {
                            cubit.toEnglish();
                          }
                        },
                        icon: const Icon(FontAwesomeIcons.language),
                        color: context.color.seconderyFontColor,
                        iconSize: 30.sp,
                      ),
                    ],
                  );
                },
              ),
            ),
            Expanded(
              child: BlocBuilder<OnboardingCubit, int>(
                builder: (context, state) {
                  return PageView(
                    controller: pageController,
                    onPageChanged: (page) {
                      final adjustedPage = isArabic ? 2 - page : page;
                      context.read<OnboardingCubit>().goToPage(adjustedPage);
                    },
                    reverse: isArabic,
                    children: pages,
                  );
                },
              ),
            ),
            _buildIndicator(context),
            const SizedBox(height: 200),
          ],
        ),
      ),
    );
  }

  List<Widget> _getArabicPages(BuildContext context) {
    return [
      OnboardingPage(
        title: context.translate(LangKeys.createStudyPlan),
        description: context.translate(LangKeys.studyPlanMotivated),
        imagePath: context.assets.onBoarding3 ?? '',
      ),
      OnboardingPage(
        title: context.translate(LangKeys.quickEasyLearning),
        description: context.translate(LangKeys.easyFastLearning),
        imagePath: context.assets.onBoarding2 ?? '',
      ),
      OnboardingPage(
        title: context.translate(LangKeys.freeTrialCourses),
        description: context.translate(LangKeys.freeCoursesFindPath),
        imagePath: context.assets.onBoarding1 ?? '',
      ),
    ];
  }

  List<Widget> _getEnglishPages(BuildContext context) {
    return [
      OnboardingPage(
        title: context.translate(LangKeys.freeTrialCourses),
        description: context.translate(LangKeys.freeCoursesFindPath),
        imagePath: context.assets.onBoarding1 ?? '',
      ),
      OnboardingPage(
        title: context.translate(LangKeys.quickEasyLearning),
        description: context.translate(LangKeys.easyFastLearning),
        imagePath: context.assets.onBoarding2 ?? '',
      ),
      OnboardingPage(
        title: context.translate(LangKeys.createStudyPlan),
        description: context.translate(LangKeys.studyPlanMotivated),
        imagePath: context.assets.onBoarding3 ?? '',
      ),
    ];
  }

  Widget _buildIndicator(BuildContext context) {
    return BlocBuilder<OnboardingCubit, int>(
      builder: (context, state) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(3, (index) {
            final isActive = state == index;

            return Container(
              margin: const EdgeInsets.all(4),
              width: isActive ? 28.0 : 9.0,
              height: 5,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                color: isActive ? context.color.blueColor : Colors.grey,
              ),
            );
          }),
        );
      },
    );
  }
}

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({
    required this.title,
    required this.description,
    required this.imagePath,
    super.key,
  });

  final String title;
  final String description;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(imagePath),
        const SizedBox(height: 20),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 85.sp),
          child: TextApp(
            text: title,
            textAlign: TextAlign.center,
            style: AppStyles.font700Main(context),
          ),
        ),
        SizedBox(height: 20.sp),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 110.sp),
          child: TextApp(
            text: description,
            textAlign: TextAlign.center,
            style: AppStyles.font400primary(context),
          ),
        ),
      ],
    );
  }
}
