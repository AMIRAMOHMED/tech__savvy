import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tech_savvy/core/extension/context_extension.dart';
import 'package:tech_savvy/core/language/lang_key.dart';
import 'package:tech_savvy/core/routs/routes_models.dart';
import 'package:tech_savvy/core/style/fonts/app_styles.dart';
import 'package:tech_savvy/core/widgets/app_text_buttom.dart';
import 'package:tech_savvy/core/widgets/app_text.dart';

class OnboardingBody extends StatelessWidget {
  const OnboardingBody({
    required this.title,
    required this.description,
    required this.imagePath,
    this.showSkipButton = false,
    this.showLoginAndSignUpButtons = false,
    this.onSkip,
    super.key,
  });
  final String title;
  final String description;
  final String imagePath;
  final bool showSkipButton;
  final bool showLoginAndSignUpButtons;
  final VoidCallback? onSkip;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        if (showSkipButton)
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.sp),
            child: Row(
              children: [
                TextButton(
                  onPressed: onSkip,
                  style: TextButton.styleFrom(
                    textStyle: AppStyles.font400primary14(context),
                    foregroundColor: context.color.hintTextColor,
                  ),
                  child: Text(
                    context.translate(LangKeys.skip),
                  ),
                ),
              ],
            ),
          ),
        Image.asset(imagePath),
        const SizedBox(height: 20),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 85.sp),
          child: TextApp(
            text: title,
            textAlign: TextAlign.center,
            style: AppStyles.font700Main22(context)
                .copyWith(color: context.color.mainFontColor2),
          ),
        ),
        SizedBox(height: 20.h),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 110.sp),
          child: TextApp(
            text: description,
            textAlign: TextAlign.center,
            style: AppStyles.font400primary16(context)
                .copyWith(color: context.color.primaryFontColor),
          ),
        ),
        SizedBox(height: 20.h),
        if (showLoginAndSignUpButtons)
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AppTextButton(
                onPressed: () {
                  context.pushName(singUp);
                },
                textStyle: AppStyles.font500primary16(context)
                    .copyWith(color: context.color.textButtomColor),
                buttonText: context.translate(LangKeys.signUp),
                buttonWidth: 120.w,
                buttonHeight: 50.h,
              ),
              const SizedBox(width: 20),
              AppTextButton(
                onPressed: () {
                  context.pushName(login);
                },
                textStyle: AppStyles.font500primary16(context)
                    .copyWith(color: context.color.seconderyFontColor),
                buttonText: context.translate(LangKeys.logIn),
                backgroundColor: context.color.buttomColor,
                borderColor: context.color.blueColor,
                buttonWidth: 120.w,
                buttonHeight: 50.h,
              ),
            ],
          ),
        SizedBox(height: 20.h),
      ],
    );
  }
}
