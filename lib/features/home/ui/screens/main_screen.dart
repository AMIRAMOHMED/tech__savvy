import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tech_savvy/core/bottom%20navigation%20bar/bottom_navigation_bar_cubit.dart';
import 'package:tech_savvy/core/bottom%20navigation%20bar/custom_buttom_navigation_bar.dart';
import 'package:tech_savvy/core/bottom%20navigation%20bar/placeholder_views.dart';
import 'package:tech_savvy/features/home/ui/screens/home_screen.dart';

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
                return const CourseView();
              case NavigationState.search:
                return const SearchView();
              case NavigationState.message:
                return const MessageView();
              case NavigationState.account:
                return const AccountView();
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
