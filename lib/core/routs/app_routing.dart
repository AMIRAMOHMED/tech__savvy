import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tech_savvy/core/bottom%20navigation%20bar/bottom_navigation_bar_cubit.dart';
import 'package:tech_savvy/features/account/ui/srcreens/account_screen.dart';
import 'package:tech_savvy/features/authentication/screens/login_screen.dart';
import 'package:tech_savvy/features/authentication/screens/sign_up_screen.dart';
import 'package:tech_savvy/features/course/ui/screens/course_screen.dart';
import 'package:tech_savvy/features/home/ui/screens/home_screen.dart';
import 'package:tech_savvy/features/home/ui/screens/main_screen.dart';
import 'package:tech_savvy/features/messages/ui/screens/main_message_screen.dart';
import 'package:tech_savvy/features/onboarding/ui/screens/on_boarding_screen.dart';
import 'package:tech_savvy/features/search/ui/screens/search_screen.dart';

class AppRoutes {
  // ignore: strict_raw_type
  Route? onGenerateRoute(RouteSettings settings) {
    // ignore: unused_local_variable
    final args = settings.arguments;
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (_) => const OnBoardingScreen(),
        );
      case '/login':
        return MaterialPageRoute(
          builder: (_) => const LoginScreen(),
        );

      case '/singUp':
        return MaterialPageRoute(
          builder: (_) => const SignUpScreen(),
        );

      case '/main':
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => NavigationCubit(),
            child: const MainScreen(),
          ),
        );

      case '/home':
        return MaterialPageRoute(
          builder: (_) => const HomeScreen(),
        );

      case '/course':
        return MaterialPageRoute(
          builder: (_) => const CourseScreen(),
        );

      case '/search':
        return MaterialPageRoute(
          builder: (_) => const SearchScreen(),
        );

      case '/message':
        return MaterialPageRoute(
          builder: (_) => const MainMessageScreen(),
        );

      case '/account':
        return MaterialPageRoute(
          builder: (_) => const AccountScreen(),
        );

      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}
