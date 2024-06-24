import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tech_savvy/core/extension/context_extension.dart';
import 'package:tech_savvy/core/language/lang_key.dart';
import 'package:tech_savvy/core/routs/routes_models.dart';
import 'package:tech_savvy/core/style/color/colors_dark.dart';
import 'package:tech_savvy/core/style/fonts/app_styles.dart';
import 'package:tech_savvy/core/widgets/app_text.dart';
import 'package:tech_savvy/core/widgets/app_text_buttom.dart';
import 'package:tech_savvy/core/widgets/app_text_form_field.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

bool isObscure = true;
final formKey = GlobalKey<FormState>();

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.color.backGround2,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: context.color.backGround3,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
              height: 200.h,
              width: double.infinity,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 35),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Align(
                      alignment: AlignmentDirectional.bottomStart,
                      child: TextApp(
                        text: context.translate(LangKeys.signUp),
                        style: AppStyles.font700Main32(context)
                            .copyWith(color: context.color.mainFontColor2),
                      ),
                    ),
                    SizedBox(height: 10.h),
                    Align(
                      alignment: AlignmentDirectional.bottomStart,
                      child: TextApp(
                        text: context.translate(LangKeys.enterDetails),
                        style: AppStyles.font400primary14(context)
                            .copyWith(color: ColorsDark.grey),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: SizedBox(
                width: double.infinity,
                child: Form(
                  key: formKey,
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 20.w,
                      vertical: 20.h,
                    ),
                    child: Column(
                      children: [
                        SizedBox(height: 50.h),
                        Align(
                          alignment: AlignmentDirectional.bottomStart,
                          child: TextApp(
                            text: context.translate(LangKeys.yourEmail),
                            style: AppStyles.font400primary14(context)
                                .copyWith(color: ColorsDark.grey),
                          ),
                        ),
                        AppTextFormField(
                          backgroundColor: context.color.fillTextFeildColor,
                          hintText: context.translate(LangKeys.yourEmail),
                        ),
                        SizedBox(height: 20.h),
                        Align(
                          alignment: AlignmentDirectional.bottomStart,
                          child: TextApp(
                            text: context.translate(LangKeys.password),
                            style: AppStyles.font400primary14(context)
                                .copyWith(color: ColorsDark.grey),
                          ),
                        ),
                        AppTextFormField(
                          backgroundColor: context.color.fillTextFeildColor,
                          hintText: context.translate(LangKeys.password),
                          isObscureText: isObscure,
                          suffixIcon: GestureDetector(
                            onTap: () => setState(() => isObscure = !isObscure),
                            child: Icon(
                              isObscure
                                  ? FontAwesomeIcons.eyeSlash
                                  : FontAwesomeIcons.eye,
                            ),
                          ),
                        ),
                        SizedBox(height: 20.h),
                        SizedBox(height: 30.h),
                        AppTextButton(
                          buttonWidth: 250.w,
                          buttonHeight: 60.h,
                          onPressed: () {},
                          buttonText: context.translate(LangKeys.createAccount),
                          textStyle: AppStyles.font500primary16(context)
                              .copyWith(color: context.color.textButtomColor),
                        ),
                        SizedBox(height: 20.h),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            TextApp(
                              text: context
                                  .translate(LangKeys.alreadyHaveAccount),
                              style: AppStyles.font400primary14(context)
                                  .copyWith(color: ColorsDark.grey),
                            ),
                            TextButton(
                              onPressed: () {
                                context.pushReplacementNamed(login);
                              },
                              child: TextApp(
                                text: context.translate(LangKeys.logIn),
                                style: AppStyles.font400primary14(context)
                                    .copyWith(color: context.color.blueColor),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
