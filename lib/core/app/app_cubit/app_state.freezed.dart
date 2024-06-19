// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AppState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(T data) changedTheme,
    required TResult Function(T data) changedLanguage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(T data)? changedTheme,
    TResult? Function(T data)? changedLanguage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(T data)? changedTheme,
    TResult Function(T data)? changedLanguage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(changedTheme<T> value) changedTheme,
    required TResult Function(changedLanguage<T> value) changedLanguage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(changedTheme<T> value)? changedTheme,
    TResult? Function(changedLanguage<T> value)? changedLanguage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(changedTheme<T> value)? changedTheme,
    TResult Function(changedLanguage<T> value)? changedLanguage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppStateCopyWith<T, $Res> {
  factory $AppStateCopyWith(
          AppState<T> value, $Res Function(AppState<T>) then) =
      _$AppStateCopyWithImpl<T, $Res, AppState<T>>;
}

/// @nodoc
class _$AppStateCopyWithImpl<T, $Res, $Val extends AppState<T>>
    implements $AppStateCopyWith<T, $Res> {
  _$AppStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<T, $Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl<T> value, $Res Function(_$InitialImpl<T>) then) =
      __$$InitialImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<T, $Res>
    extends _$AppStateCopyWithImpl<T, $Res, _$InitialImpl<T>>
    implements _$$InitialImplCopyWith<T, $Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl<T> _value, $Res Function(_$InitialImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl<T> implements _Initial<T> {
  const _$InitialImpl();

  @override
  String toString() {
    return 'AppState<$T>.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(T data) changedTheme,
    required TResult Function(T data) changedLanguage,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(T data)? changedTheme,
    TResult? Function(T data)? changedLanguage,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(T data)? changedTheme,
    TResult Function(T data)? changedLanguage,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(changedTheme<T> value) changedTheme,
    required TResult Function(changedLanguage<T> value) changedLanguage,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(changedTheme<T> value)? changedTheme,
    TResult? Function(changedLanguage<T> value)? changedLanguage,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(changedTheme<T> value)? changedTheme,
    TResult Function(changedLanguage<T> value)? changedLanguage,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial<T> implements AppState<T> {
  const factory _Initial() = _$InitialImpl<T>;
}

/// @nodoc
abstract class _$$changedThemeImplCopyWith<T, $Res> {
  factory _$$changedThemeImplCopyWith(_$changedThemeImpl<T> value,
          $Res Function(_$changedThemeImpl<T>) then) =
      __$$changedThemeImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T data});
}

/// @nodoc
class __$$changedThemeImplCopyWithImpl<T, $Res>
    extends _$AppStateCopyWithImpl<T, $Res, _$changedThemeImpl<T>>
    implements _$$changedThemeImplCopyWith<T, $Res> {
  __$$changedThemeImplCopyWithImpl(
      _$changedThemeImpl<T> _value, $Res Function(_$changedThemeImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$changedThemeImpl<T>(
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$changedThemeImpl<T> implements changedTheme<T> {
  const _$changedThemeImpl(this.data);

  @override
  final T data;

  @override
  String toString() {
    return 'AppState<$T>.changedTheme(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$changedThemeImpl<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$changedThemeImplCopyWith<T, _$changedThemeImpl<T>> get copyWith =>
      __$$changedThemeImplCopyWithImpl<T, _$changedThemeImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(T data) changedTheme,
    required TResult Function(T data) changedLanguage,
  }) {
    return changedTheme(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(T data)? changedTheme,
    TResult? Function(T data)? changedLanguage,
  }) {
    return changedTheme?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(T data)? changedTheme,
    TResult Function(T data)? changedLanguage,
    required TResult orElse(),
  }) {
    if (changedTheme != null) {
      return changedTheme(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(changedTheme<T> value) changedTheme,
    required TResult Function(changedLanguage<T> value) changedLanguage,
  }) {
    return changedTheme(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(changedTheme<T> value)? changedTheme,
    TResult? Function(changedLanguage<T> value)? changedLanguage,
  }) {
    return changedTheme?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(changedTheme<T> value)? changedTheme,
    TResult Function(changedLanguage<T> value)? changedLanguage,
    required TResult orElse(),
  }) {
    if (changedTheme != null) {
      return changedTheme(this);
    }
    return orElse();
  }
}

abstract class changedTheme<T> implements AppState<T> {
  const factory changedTheme(final T data) = _$changedThemeImpl<T>;

  T get data;
  @JsonKey(ignore: true)
  _$$changedThemeImplCopyWith<T, _$changedThemeImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$changedLanguageImplCopyWith<T, $Res> {
  factory _$$changedLanguageImplCopyWith(_$changedLanguageImpl<T> value,
          $Res Function(_$changedLanguageImpl<T>) then) =
      __$$changedLanguageImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T data});
}

/// @nodoc
class __$$changedLanguageImplCopyWithImpl<T, $Res>
    extends _$AppStateCopyWithImpl<T, $Res, _$changedLanguageImpl<T>>
    implements _$$changedLanguageImplCopyWith<T, $Res> {
  __$$changedLanguageImplCopyWithImpl(_$changedLanguageImpl<T> _value,
      $Res Function(_$changedLanguageImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$changedLanguageImpl<T>(
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$changedLanguageImpl<T> implements changedLanguage<T> {
  const _$changedLanguageImpl(this.data);

  @override
  final T data;

  @override
  String toString() {
    return 'AppState<$T>.changedLanguage(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$changedLanguageImpl<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$changedLanguageImplCopyWith<T, _$changedLanguageImpl<T>> get copyWith =>
      __$$changedLanguageImplCopyWithImpl<T, _$changedLanguageImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(T data) changedTheme,
    required TResult Function(T data) changedLanguage,
  }) {
    return changedLanguage(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(T data)? changedTheme,
    TResult? Function(T data)? changedLanguage,
  }) {
    return changedLanguage?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(T data)? changedTheme,
    TResult Function(T data)? changedLanguage,
    required TResult orElse(),
  }) {
    if (changedLanguage != null) {
      return changedLanguage(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(changedTheme<T> value) changedTheme,
    required TResult Function(changedLanguage<T> value) changedLanguage,
  }) {
    return changedLanguage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(changedTheme<T> value)? changedTheme,
    TResult? Function(changedLanguage<T> value)? changedLanguage,
  }) {
    return changedLanguage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(changedTheme<T> value)? changedTheme,
    TResult Function(changedLanguage<T> value)? changedLanguage,
    required TResult orElse(),
  }) {
    if (changedLanguage != null) {
      return changedLanguage(this);
    }
    return orElse();
  }
}

abstract class changedLanguage<T> implements AppState<T> {
  const factory changedLanguage(final T data) = _$changedLanguageImpl<T>;

  T get data;
  @JsonKey(ignore: true)
  _$$changedLanguageImplCopyWith<T, _$changedLanguageImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
