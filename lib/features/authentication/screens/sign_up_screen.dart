import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tech_savvy/core/extension/context_extension.dart';
import 'package:tech_savvy/core/language/lang_key.dart';
import 'package:tech_savvy/core/style/fonts/app_styles.dart';
import 'package:tech_savvy/core/widgets/app_text.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: context.color.backGround,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              color: context.color.backGround2,
              child: SizedBox(
                height: 100.h,
              ),
            ),
            TextApp(
              text: context.translate(LangKeys.signUp),
              style: AppStyles.font700Main22(context)
                  .copyWith(color: context.color.mainFontColor2),
            ),
            SizedBox(
              height: 10.h,
            ),
            TextApp(
              text: context.translate(LangKeys.enterDetails),
              style: AppStyles.font400primary12(context)
                  .copyWith(color: context.color.mainFontColor2),
            ),
            SizedBox(
              height: 20.h,
            ),
            

          ],
        ),
      ),
    );
  }
}
