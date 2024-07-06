import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tech_savvy/core/bottom%20navigation%20bar/bottom_navigation_bar_cubit.dart';
import 'package:tech_savvy/core/bottom%20navigation%20bar/custom_buttom_navigation_bar.dart';
import 'package:tech_savvy/features/account/ui/srcreens/account_screen.dart';
import 'package:tech_savvy/features/course/ui/screens/main_course_screen.dart';
import 'package:tech_savvy/features/home/ui/screens/home_screen.dart';
import 'package:tech_savvy/features/messages/ui/screens/main_message_screen.dart';
import 'package:tech_savvy/features/search/ui/screens/search_screen.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NavigationCubit(),
      child: Scaffold(
        body: BlocBuilder<NavigationCubit, NavigationState>(
          builder: (context, state) {
            switch (state) {
              case NavigationState.home:
                return const HomeScreen();
              case NavigationState.course:
                return const MainCourseScreen();
              case NavigationState.search:
                return const SearchScreen();
              case NavigationState.message:
                return const MainMessageScreen();
              case NavigationState.account:
                return const AccountScreen();
              // ignore: no_default_cases
              default:
                return const HomeScreen();
            }
          },
        ),
        bottomNavigationBar: const CustomBottomNavBar(),
      ),
    );
  }
}
