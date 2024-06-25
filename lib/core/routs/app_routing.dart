import 'package:flutter/material.dart';
import 'package:tech_savvy/features/authentication/screens/login_screen.dart';
import 'package:tech_savvy/features/authentication/screens/sign_up_screen.dart';
import 'package:tech_savvy/features/home/ui/screens/home_screen.dart';
import 'package:tech_savvy/features/onboarding/ui/screens/on_boarding_screen.dart';

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
        return MaterialPageRoute(builder: (_) => const LoginScreen(),
        );

      case '/singUp':
        return MaterialPageRoute(builder: (_) => const SignUpScreen(),
        );

      case '/home':
        return MaterialPageRoute(builder: (_) => const HomeScreen(),
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
