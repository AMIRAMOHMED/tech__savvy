import 'package:bloc/bloc.dart';
import 'package:tech_savvy/core/app/app_cubit/app_state.dart';
import 'package:tech_savvy/core/shared_perfernce/shared_key.dart';
import 'package:tech_savvy/core/shared_perfernce/shared_perfernce.dart';

// ignore: strict_raw_type
class AppCubit extends Cubit<AppState> {
  AppCubit() : super(const AppState.initial());
  bool isDark = true;

  Future<void> chansngeTheme({
    bool? sharedMood,
  }) async {
    if (sharedMood != null) {
      sharedMood = isDark;

      emit(AppState.success(isDark));
    } else {
      await SharedPref().setBoolean(PrefKeys.themeMode, isDark).then((value) {
        isDark = !isDark;
        emit(AppState.success(isDark));
      });
    }
  }
}
