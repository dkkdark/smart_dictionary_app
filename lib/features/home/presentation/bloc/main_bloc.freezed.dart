// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'main_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MainEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadWordsLists,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadWordsLists,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadWordsLists,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadWordsLists value) loadWordsLists,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadWordsLists value)? loadWordsLists,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadWordsLists value)? loadWordsLists,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainEventCopyWith<$Res> {
  factory $MainEventCopyWith(MainEvent value, $Res Function(MainEvent) then) =
      _$MainEventCopyWithImpl<$Res, MainEvent>;
}

/// @nodoc
class _$MainEventCopyWithImpl<$Res, $Val extends MainEvent>
    implements $MainEventCopyWith<$Res> {
  _$MainEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoadWordsListsImplCopyWith<$Res> {
  factory _$$LoadWordsListsImplCopyWith(_$LoadWordsListsImpl value,
          $Res Function(_$LoadWordsListsImpl) then) =
      __$$LoadWordsListsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadWordsListsImplCopyWithImpl<$Res>
    extends _$MainEventCopyWithImpl<$Res, _$LoadWordsListsImpl>
    implements _$$LoadWordsListsImplCopyWith<$Res> {
  __$$LoadWordsListsImplCopyWithImpl(
      _$LoadWordsListsImpl _value, $Res Function(_$LoadWordsListsImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadWordsListsImpl
    with DiagnosticableTreeMixin
    implements _LoadWordsLists {
  const _$LoadWordsListsImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MainEvent.loadWordsLists()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'MainEvent.loadWordsLists'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadWordsListsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadWordsLists,
  }) {
    return loadWordsLists();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadWordsLists,
  }) {
    return loadWordsLists?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadWordsLists,
    required TResult orElse(),
  }) {
    if (loadWordsLists != null) {
      return loadWordsLists();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadWordsLists value) loadWordsLists,
  }) {
    return loadWordsLists(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadWordsLists value)? loadWordsLists,
  }) {
    return loadWordsLists?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadWordsLists value)? loadWordsLists,
    required TResult orElse(),
  }) {
    if (loadWordsLists != null) {
      return loadWordsLists(this);
    }
    return orElse();
  }
}

abstract class _LoadWordsLists implements MainEvent {
  const factory _LoadWordsLists() = _$LoadWordsListsImpl;
}

/// @nodoc
mixin _$MainState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() mainLoadListLoading,
    required TResult Function() mainLoadListSuccess,
    required TResult Function() mainLoadListError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? mainLoadListLoading,
    TResult? Function()? mainLoadListSuccess,
    TResult? Function()? mainLoadListError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? mainLoadListLoading,
    TResult Function()? mainLoadListSuccess,
    TResult Function()? mainLoadListError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_MainLoadListLoading value) mainLoadListLoading,
    required TResult Function(_MainLoadListSuccess value) mainLoadListSuccess,
    required TResult Function(_MainLoadListError value) mainLoadListError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_MainLoadListLoading value)? mainLoadListLoading,
    TResult? Function(_MainLoadListSuccess value)? mainLoadListSuccess,
    TResult? Function(_MainLoadListError value)? mainLoadListError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_MainLoadListLoading value)? mainLoadListLoading,
    TResult Function(_MainLoadListSuccess value)? mainLoadListSuccess,
    TResult Function(_MainLoadListError value)? mainLoadListError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainStateCopyWith<$Res> {
  factory $MainStateCopyWith(MainState value, $Res Function(MainState) then) =
      _$MainStateCopyWithImpl<$Res, MainState>;
}

/// @nodoc
class _$MainStateCopyWithImpl<$Res, $Val extends MainState>
    implements $MainStateCopyWith<$Res> {
  _$MainStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$MainStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl with DiagnosticableTreeMixin implements _Initial {
  const _$InitialImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MainState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'MainState.initial'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() mainLoadListLoading,
    required TResult Function() mainLoadListSuccess,
    required TResult Function() mainLoadListError,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? mainLoadListLoading,
    TResult? Function()? mainLoadListSuccess,
    TResult? Function()? mainLoadListError,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? mainLoadListLoading,
    TResult Function()? mainLoadListSuccess,
    TResult Function()? mainLoadListError,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(_MainLoadListLoading value) mainLoadListLoading,
    required TResult Function(_MainLoadListSuccess value) mainLoadListSuccess,
    required TResult Function(_MainLoadListError value) mainLoadListError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_MainLoadListLoading value)? mainLoadListLoading,
    TResult? Function(_MainLoadListSuccess value)? mainLoadListSuccess,
    TResult? Function(_MainLoadListError value)? mainLoadListError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_MainLoadListLoading value)? mainLoadListLoading,
    TResult Function(_MainLoadListSuccess value)? mainLoadListSuccess,
    TResult Function(_MainLoadListError value)? mainLoadListError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements MainState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$MainLoadListLoadingImplCopyWith<$Res> {
  factory _$$MainLoadListLoadingImplCopyWith(_$MainLoadListLoadingImpl value,
          $Res Function(_$MainLoadListLoadingImpl) then) =
      __$$MainLoadListLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MainLoadListLoadingImplCopyWithImpl<$Res>
    extends _$MainStateCopyWithImpl<$Res, _$MainLoadListLoadingImpl>
    implements _$$MainLoadListLoadingImplCopyWith<$Res> {
  __$$MainLoadListLoadingImplCopyWithImpl(_$MainLoadListLoadingImpl _value,
      $Res Function(_$MainLoadListLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$MainLoadListLoadingImpl
    with DiagnosticableTreeMixin
    implements _MainLoadListLoading {
  const _$MainLoadListLoadingImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MainState.mainLoadListLoading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'MainState.mainLoadListLoading'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MainLoadListLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() mainLoadListLoading,
    required TResult Function() mainLoadListSuccess,
    required TResult Function() mainLoadListError,
  }) {
    return mainLoadListLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? mainLoadListLoading,
    TResult? Function()? mainLoadListSuccess,
    TResult? Function()? mainLoadListError,
  }) {
    return mainLoadListLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? mainLoadListLoading,
    TResult Function()? mainLoadListSuccess,
    TResult Function()? mainLoadListError,
    required TResult orElse(),
  }) {
    if (mainLoadListLoading != null) {
      return mainLoadListLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_MainLoadListLoading value) mainLoadListLoading,
    required TResult Function(_MainLoadListSuccess value) mainLoadListSuccess,
    required TResult Function(_MainLoadListError value) mainLoadListError,
  }) {
    return mainLoadListLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_MainLoadListLoading value)? mainLoadListLoading,
    TResult? Function(_MainLoadListSuccess value)? mainLoadListSuccess,
    TResult? Function(_MainLoadListError value)? mainLoadListError,
  }) {
    return mainLoadListLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_MainLoadListLoading value)? mainLoadListLoading,
    TResult Function(_MainLoadListSuccess value)? mainLoadListSuccess,
    TResult Function(_MainLoadListError value)? mainLoadListError,
    required TResult orElse(),
  }) {
    if (mainLoadListLoading != null) {
      return mainLoadListLoading(this);
    }
    return orElse();
  }
}

abstract class _MainLoadListLoading implements MainState {
  const factory _MainLoadListLoading() = _$MainLoadListLoadingImpl;
}

/// @nodoc
abstract class _$$MainLoadListSuccessImplCopyWith<$Res> {
  factory _$$MainLoadListSuccessImplCopyWith(_$MainLoadListSuccessImpl value,
          $Res Function(_$MainLoadListSuccessImpl) then) =
      __$$MainLoadListSuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MainLoadListSuccessImplCopyWithImpl<$Res>
    extends _$MainStateCopyWithImpl<$Res, _$MainLoadListSuccessImpl>
    implements _$$MainLoadListSuccessImplCopyWith<$Res> {
  __$$MainLoadListSuccessImplCopyWithImpl(_$MainLoadListSuccessImpl _value,
      $Res Function(_$MainLoadListSuccessImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$MainLoadListSuccessImpl
    with DiagnosticableTreeMixin
    implements _MainLoadListSuccess {
  const _$MainLoadListSuccessImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MainState.mainLoadListSuccess()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'MainState.mainLoadListSuccess'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MainLoadListSuccessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() mainLoadListLoading,
    required TResult Function() mainLoadListSuccess,
    required TResult Function() mainLoadListError,
  }) {
    return mainLoadListSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? mainLoadListLoading,
    TResult? Function()? mainLoadListSuccess,
    TResult? Function()? mainLoadListError,
  }) {
    return mainLoadListSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? mainLoadListLoading,
    TResult Function()? mainLoadListSuccess,
    TResult Function()? mainLoadListError,
    required TResult orElse(),
  }) {
    if (mainLoadListSuccess != null) {
      return mainLoadListSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_MainLoadListLoading value) mainLoadListLoading,
    required TResult Function(_MainLoadListSuccess value) mainLoadListSuccess,
    required TResult Function(_MainLoadListError value) mainLoadListError,
  }) {
    return mainLoadListSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_MainLoadListLoading value)? mainLoadListLoading,
    TResult? Function(_MainLoadListSuccess value)? mainLoadListSuccess,
    TResult? Function(_MainLoadListError value)? mainLoadListError,
  }) {
    return mainLoadListSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_MainLoadListLoading value)? mainLoadListLoading,
    TResult Function(_MainLoadListSuccess value)? mainLoadListSuccess,
    TResult Function(_MainLoadListError value)? mainLoadListError,
    required TResult orElse(),
  }) {
    if (mainLoadListSuccess != null) {
      return mainLoadListSuccess(this);
    }
    return orElse();
  }
}

abstract class _MainLoadListSuccess implements MainState {
  const factory _MainLoadListSuccess() = _$MainLoadListSuccessImpl;
}

/// @nodoc
abstract class _$$MainLoadListErrorImplCopyWith<$Res> {
  factory _$$MainLoadListErrorImplCopyWith(_$MainLoadListErrorImpl value,
          $Res Function(_$MainLoadListErrorImpl) then) =
      __$$MainLoadListErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MainLoadListErrorImplCopyWithImpl<$Res>
    extends _$MainStateCopyWithImpl<$Res, _$MainLoadListErrorImpl>
    implements _$$MainLoadListErrorImplCopyWith<$Res> {
  __$$MainLoadListErrorImplCopyWithImpl(_$MainLoadListErrorImpl _value,
      $Res Function(_$MainLoadListErrorImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$MainLoadListErrorImpl
    with DiagnosticableTreeMixin
    implements _MainLoadListError {
  const _$MainLoadListErrorImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MainState.mainLoadListError()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'MainState.mainLoadListError'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$MainLoadListErrorImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() mainLoadListLoading,
    required TResult Function() mainLoadListSuccess,
    required TResult Function() mainLoadListError,
  }) {
    return mainLoadListError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? mainLoadListLoading,
    TResult? Function()? mainLoadListSuccess,
    TResult? Function()? mainLoadListError,
  }) {
    return mainLoadListError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? mainLoadListLoading,
    TResult Function()? mainLoadListSuccess,
    TResult Function()? mainLoadListError,
    required TResult orElse(),
  }) {
    if (mainLoadListError != null) {
      return mainLoadListError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_MainLoadListLoading value) mainLoadListLoading,
    required TResult Function(_MainLoadListSuccess value) mainLoadListSuccess,
    required TResult Function(_MainLoadListError value) mainLoadListError,
  }) {
    return mainLoadListError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_MainLoadListLoading value)? mainLoadListLoading,
    TResult? Function(_MainLoadListSuccess value)? mainLoadListSuccess,
    TResult? Function(_MainLoadListError value)? mainLoadListError,
  }) {
    return mainLoadListError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_MainLoadListLoading value)? mainLoadListLoading,
    TResult Function(_MainLoadListSuccess value)? mainLoadListSuccess,
    TResult Function(_MainLoadListError value)? mainLoadListError,
    required TResult orElse(),
  }) {
    if (mainLoadListError != null) {
      return mainLoadListError(this);
    }
    return orElse();
  }
}

abstract class _MainLoadListError implements MainState {
  const factory _MainLoadListError() = _$MainLoadListErrorImpl;
}
