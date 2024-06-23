import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tech_savvy/core/app/app_cubit/app_cubit.dart';
import 'package:tech_savvy/core/app/app_cubit/app_state.dart';
import 'package:tech_savvy/core/extension/context_extension.dart';
import 'package:tech_savvy/core/language/app_localizations.dart';
import 'package:tech_savvy/features/onboarding/logic/cubit/onboarding_cubit.dart';
import 'package:tech_savvy/features/onboarding/ui/widgets/indicator_widget.dart';
import 'package:tech_savvy/features/onboarding/ui/widgets/on_boarding_page.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  bool _isArabic(BuildContext context) {
    return AppLocalizations.of(context)?.locale.languageCode == 'ar';
  }

  @override
  Widget build(BuildContext context) {
    final isArabic = _isArabic(context);
    final pageController = PageController(initialPage: isArabic ? 2 : 0);
    final pages = _getPages(context, isArabic, pageController);
    final cubit = context.read<AppCubit>();

    return SafeArea(
      child: Scaffold(
        backgroundColor: context.color.backGround,
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.sp, vertical: 20.sp),
              child: BlocBuilder<AppCubit, AppState>(
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
            const Indicator(),
            SizedBox(height: 100.h),
          ],
        ),
      ),
    );
  }

  List<Widget> _getPages(
    BuildContext context,
    bool isArabic,
    PageController pageController,
  ) {
    return getOnboardingPages(context, isArabic, pageController);
  }
}
