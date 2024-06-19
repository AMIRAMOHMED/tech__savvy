import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_state.freezed.dart';

@freezed
class AppState<T> with _$AppState<T> {
  const factory AppState.initial() = _Initial<T>;
  const factory AppState.changedTheme(T data) = changedTheme<T>;
  const factory AppState.changedLanguage(T data) = changedLanguage<T>;
}
