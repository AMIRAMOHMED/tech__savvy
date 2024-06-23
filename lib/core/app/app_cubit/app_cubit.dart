import 'package:bloc/bloc.dart';
import 'package:tech_savvy/core/app/app_cubit/app_state.dart';
import 'package:tech_savvy/core/shared_perfernce/shared_key.dart';
import 'package:tech_savvy/core/shared_perfernce/shared_perfernce.dart';

class AppCubit extends Cubit<AppState> {
  AppCubit() : super(const AppState.initial()) {
    _initialize();
  }

  bool isDark = true;
  String currentLanguage = 'en';

  Future <void>  _initialize() async {
    final sharedMood = SharedPref().getBoolean(PrefKeys.themeMode);
    if (sharedMood != null) {
      isDark = sharedMood;
    } else {
      isDark = true; 
    }
    emit(AppState.changedTheme(isDark));

    final result = SharedPref().containPreference(PrefKeys.language)
        ? SharedPref().getString(PrefKeys.language)
        : 'en';
    currentLanguage = result!;
    emit(AppState.changedLanguage(currentLanguage));
  }

  Future<void> chansngeTheme({
    bool? sharedMood,
  }) async {
    if (sharedMood != null) {
      isDark = sharedMood;
    } else {
      isDark = !isDark;
    }
    await SharedPref().setBoolean(PrefKeys.themeMode, isDark);
    emit(AppState.changedTheme(isDark));
  }

  void getCurrentLangaue() {
    final result = SharedPref().containPreference(PrefKeys.language)
        ? SharedPref().getString(PrefKeys.language)
        : 'en';
    currentLanguage = result!;
    emit(AppState.changedLanguage(currentLanguage));
  }

  Future<void> _changeLangaouse(String langCode) async {
    await SharedPref().setString(PrefKeys.language, langCode);
    currentLanguage = langCode;
    emit(AppState.changedLanguage(currentLanguage));
  }

  void toArbic() => _changeLangaouse('ar');

  void toEnglish() => _changeLangaouse('en');
}
