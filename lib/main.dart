import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tech_savvy/core/extension/context_extension.dart';
import 'package:tech_savvy/core/routs/app_routing.dart';
import 'package:tech_savvy/core/style/theme/app_theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await SystemChrome.setPreferredOrientations(
    [DeviceOrientation.portraitDown, DeviceOrientation.portraitUp],
  );

  runApp(const TechSavvy());
}

class TechSavvy extends StatelessWidget {
  const TechSavvy({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        onGenerateRoute: AppRoutes().onGenerateRoute,
        title: 'Flutter Demo',
        theme: themLight(),
        home: Scaffold(
          body: Center(
            child: Column(
              children: [
                const Text('Hello World'),
                Builder(
                  builder: (context) {
                    final assets = context.assets;
                    return Image.asset(assets.onBoarding1!);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
