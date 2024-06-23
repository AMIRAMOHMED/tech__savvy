import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tech_savvy/core/app/app_cubit/app_cubit.dart';
import 'package:tech_savvy/core/app/app_cubit/app_state.dart';
import 'package:tech_savvy/core/language/app_localizations_setup.dart';
import 'package:tech_savvy/core/routs/app_routing.dart';
import 'package:tech_savvy/core/shared_perfernce/shared_perfernce.dart';
import 'package:tech_savvy/core/style/theme/app_theme.dart';
import 'package:tech_savvy/features/onboarding/logic/cubit/onboarding_cubit.dart';
import 'package:tech_savvy/features/onboarding/ui/screens/on_boarding_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await SystemChrome.setPreferredOrientations(
    [DeviceOrientation.portraitDown, DeviceOrientation.portraitUp],
  );
  await SharedPref().instantiatePreferences();

  runApp(const TechSavvy());
}

class TechSavvy extends StatelessWidget {
  const TechSavvy({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AppCubit(),
      child: ScreenUtilInit(
        designSize: const Size(375, 812),
        minTextAdapt: true,
        child: BlocBuilder<AppCubit, AppState>(
          
          builder: (context, state) {
            final appCubit = context.read<AppCubit>();
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              onGenerateRoute: AppRoutes().onGenerateRoute,
              title: 'Flutter Demo',
              theme: appCubit.isDark ? themDark() : themLight(),
              locale: Locale(appCubit.currentLanguage),
              supportedLocales: AppLocalizationsSetup.supportedLocales,
              localizationsDelegates: AppLocalizationsSetup.localizationsDelegates,
              localeResolutionCallback: AppLocalizationsSetup.localeResolutionCallback,
              home: GestureDetector(
                onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
                child: BlocProvider(
                  create: (_) => OnboardingCubit(),
                  child: const OnBoardingScreen(),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
