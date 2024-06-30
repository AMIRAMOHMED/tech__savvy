import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tech_savvy/core/bottom%20navigation%20bar/bottom_navigation_bar_cubit.dart';
import 'package:tech_savvy/core/extension/context_extension.dart';
import 'package:tech_savvy/core/language/lang_key.dart';
import 'package:tech_savvy/core/style/color/colors_dark.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return ConvexAppBar(
      activeColor: ColorsDark.blue,
      style: TabStyle.fixed,
      
      color: context.color.bottomNavigationBar,
      backgroundColor: context.color.backGround2,
      items: [
        TabItem(
          icon: FontAwesomeIcons.house,
          title: context.translate(LangKeys.home),
        ),
        TabItem(
          icon: FontAwesomeIcons.book,
          title: context.translate(LangKeys.course),
        ),
        TabItem(
          icon: FontAwesomeIcons.searchengin,
          title: context.translate(LangKeys.search),
        ),
        TabItem(
          icon: FontAwesomeIcons.message,
          title: context.translate(LangKeys.message),
        ),
        TabItem(
          icon: FontAwesomeIcons.person,
          title: context.translate(LangKeys.account),
        ),
      ],
      onTap: (int index) {
        BlocProvider.of<NavigationCubit>(context).selectPage(index);
      },
    );
  }
}
