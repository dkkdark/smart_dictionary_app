// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'list_creation_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ListCreationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String word, int limit) getIcons,
    required TResult Function(ListModel list) saveList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String word, int limit)? getIcons,
    TResult? Function(ListModel list)? saveList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String word, int limit)? getIcons,
    TResult Function(ListModel list)? saveList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetIcons value) getIcons,
    required TResult Function(_SaveList value) saveList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetIcons value)? getIcons,
    TResult? Function(_SaveList value)? saveList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetIcons value)? getIcons,
    TResult Function(_SaveList value)? saveList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListCreationEventCopyWith<$Res> {
  factory $ListCreationEventCopyWith(
          ListCreationEvent value, $Res Function(ListCreationEvent) then) =
      _$ListCreationEventCopyWithImpl<$Res, ListCreationEvent>;
}

/// @nodoc
class _$ListCreationEventCopyWithImpl<$Res, $Val extends ListCreationEvent>
    implements $ListCreationEventCopyWith<$Res> {
  _$ListCreationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetIconsImplCopyWith<$Res> {
  factory _$$GetIconsImplCopyWith(
          _$GetIconsImpl value, $Res Function(_$GetIconsImpl) then) =
      __$$GetIconsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String word, int limit});
}

/// @nodoc
class __$$GetIconsImplCopyWithImpl<$Res>
    extends _$ListCreationEventCopyWithImpl<$Res, _$GetIconsImpl>
    implements _$$GetIconsImplCopyWith<$Res> {
  __$$GetIconsImplCopyWithImpl(
      _$GetIconsImpl _value, $Res Function(_$GetIconsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? word = null,
    Object? limit = null,
  }) {
    return _then(_$GetIconsImpl(
      null == word
          ? _value.word
          : word // ignore: cast_nullable_to_non_nullable
              as String,
      null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$GetIconsImpl implements _GetIcons {
  const _$GetIconsImpl(this.word, this.limit);

  @override
  final String word;
  @override
  final int limit;

  @override
  String toString() {
    return 'ListCreationEvent.getIcons(word: $word, limit: $limit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetIconsImpl &&
            (identical(other.word, word) || other.word == word) &&
            (identical(other.limit, limit) || other.limit == limit));
  }

  @override
  int get hashCode => Object.hash(runtimeType, word, limit);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetIconsImplCopyWith<_$GetIconsImpl> get copyWith =>
      __$$GetIconsImplCopyWithImpl<_$GetIconsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String word, int limit) getIcons,
    required TResult Function(ListModel list) saveList,
  }) {
    return getIcons(word, limit);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String word, int limit)? getIcons,
    TResult? Function(ListModel list)? saveList,
  }) {
    return getIcons?.call(word, limit);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String word, int limit)? getIcons,
    TResult Function(ListModel list)? saveList,
    required TResult orElse(),
  }) {
    if (getIcons != null) {
      return getIcons(word, limit);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetIcons value) getIcons,
    required TResult Function(_SaveList value) saveList,
  }) {
    return getIcons(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetIcons value)? getIcons,
    TResult? Function(_SaveList value)? saveList,
  }) {
    return getIcons?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetIcons value)? getIcons,
    TResult Function(_SaveList value)? saveList,
    required TResult orElse(),
  }) {
    if (getIcons != null) {
      return getIcons(this);
    }
    return orElse();
  }
}

abstract class _GetIcons implements ListCreationEvent {
  const factory _GetIcons(final String word, final int limit) = _$GetIconsImpl;

  String get word;
  int get limit;
  @JsonKey(ignore: true)
  _$$GetIconsImplCopyWith<_$GetIconsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SaveListImplCopyWith<$Res> {
  factory _$$SaveListImplCopyWith(
          _$SaveListImpl value, $Res Function(_$SaveListImpl) then) =
      __$$SaveListImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ListModel list});
}

/// @nodoc
class __$$SaveListImplCopyWithImpl<$Res>
    extends _$ListCreationEventCopyWithImpl<$Res, _$SaveListImpl>
    implements _$$SaveListImplCopyWith<$Res> {
  __$$SaveListImplCopyWithImpl(
      _$SaveListImpl _value, $Res Function(_$SaveListImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? list = null,
  }) {
    return _then(_$SaveListImpl(
      null == list
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as ListModel,
    ));
  }
}

/// @nodoc

class _$SaveListImpl implements _SaveList {
  const _$SaveListImpl(this.list);

  @override
  final ListModel list;

  @override
  String toString() {
    return 'ListCreationEvent.saveList(list: $list)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SaveListImpl &&
            (identical(other.list, list) || other.list == list));
  }

  @override
  int get hashCode => Object.hash(runtimeType, list);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SaveListImplCopyWith<_$SaveListImpl> get copyWith =>
      __$$SaveListImplCopyWithImpl<_$SaveListImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String word, int limit) getIcons,
    required TResult Function(ListModel list) saveList,
  }) {
    return saveList(list);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String word, int limit)? getIcons,
    TResult? Function(ListModel list)? saveList,
  }) {
    return saveList?.call(list);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String word, int limit)? getIcons,
    TResult Function(ListModel list)? saveList,
    required TResult orElse(),
  }) {
    if (saveList != null) {
      return saveList(list);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetIcons value) getIcons,
    required TResult Function(_SaveList value) saveList,
  }) {
    return saveList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetIcons value)? getIcons,
    TResult? Function(_SaveList value)? saveList,
  }) {
    return saveList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetIcons value)? getIcons,
    TResult Function(_SaveList value)? saveList,
    required TResult orElse(),
  }) {
    if (saveList != null) {
      return saveList(this);
    }
    return orElse();
  }
}

abstract class _SaveList implements ListCreationEvent {
  const factory _SaveList(final ListModel list) = _$SaveListImpl;

  ListModel get list;
  @JsonKey(ignore: true)
  _$$SaveListImplCopyWith<_$SaveListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ListCreationState {
  ListCreationStatus get status => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  IconModel get icons => throw _privateConstructorUsedError;
  String get failedSaving => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ListCreationStateCopyWith<ListCreationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListCreationStateCopyWith<$Res> {
  factory $ListCreationStateCopyWith(
          ListCreationState value, $Res Function(ListCreationState) then) =
      _$ListCreationStateCopyWithImpl<$Res, ListCreationState>;
  @useResult
  $Res call(
      {ListCreationStatus status,
      String message,
      IconModel icons,
      String failedSaving});

  $IconModelCopyWith<$Res> get icons;
}

/// @nodoc
class _$ListCreationStateCopyWithImpl<$Res, $Val extends ListCreationState>
    implements $ListCreationStateCopyWith<$Res> {
  _$ListCreationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? icons = null,
    Object? failedSaving = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ListCreationStatus,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      icons: null == icons
          ? _value.icons
          : icons // ignore: cast_nullable_to_non_nullable
              as IconModel,
      failedSaving: null == failedSaving
          ? _value.failedSaving
          : failedSaving // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $IconModelCopyWith<$Res> get icons {
    return $IconModelCopyWith<$Res>(_value.icons, (value) {
      return _then(_value.copyWith(icons: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ListCreationStateImplCopyWith<$Res>
    implements $ListCreationStateCopyWith<$Res> {
  factory _$$ListCreationStateImplCopyWith(_$ListCreationStateImpl value,
          $Res Function(_$ListCreationStateImpl) then) =
      __$$ListCreationStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ListCreationStatus status,
      String message,
      IconModel icons,
      String failedSaving});

  @override
  $IconModelCopyWith<$Res> get icons;
}

/// @nodoc
class __$$ListCreationStateImplCopyWithImpl<$Res>
    extends _$ListCreationStateCopyWithImpl<$Res, _$ListCreationStateImpl>
    implements _$$ListCreationStateImplCopyWith<$Res> {
  __$$ListCreationStateImplCopyWithImpl(_$ListCreationStateImpl _value,
      $Res Function(_$ListCreationStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? icons = null,
    Object? failedSaving = null,
  }) {
    return _then(_$ListCreationStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ListCreationStatus,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      icons: null == icons
          ? _value.icons
          : icons // ignore: cast_nullable_to_non_nullable
              as IconModel,
      failedSaving: null == failedSaving
          ? _value.failedSaving
          : failedSaving // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ListCreationStateImpl implements _ListCreationState {
  const _$ListCreationStateImpl(
      {this.status = ListCreationStatus.initial,
      this.message = "",
      this.icons = const IconModel(icons: []),
      this.failedSaving = ""});

  @override
  @JsonKey()
  final ListCreationStatus status;
  @override
  @JsonKey()
  final String message;
  @override
  @JsonKey()
  final IconModel icons;
  @override
  @JsonKey()
  final String failedSaving;

  @override
  String toString() {
    return 'ListCreationState(status: $status, message: $message, icons: $icons, failedSaving: $failedSaving)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ListCreationStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.icons, icons) || other.icons == icons) &&
            (identical(other.failedSaving, failedSaving) ||
                other.failedSaving == failedSaving));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, status, message, icons, failedSaving);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ListCreationStateImplCopyWith<_$ListCreationStateImpl> get copyWith =>
      __$$ListCreationStateImplCopyWithImpl<_$ListCreationStateImpl>(
          this, _$identity);
}

abstract class _ListCreationState implements ListCreationState {
  const factory _ListCreationState(
      {final ListCreationStatus status,
      final String message,
      final IconModel icons,
      final String failedSaving}) = _$ListCreationStateImpl;

  @override
  ListCreationStatus get status;
  @override
  String get message;
  @override
  IconModel get icons;
  @override
  String get failedSaving;
  @override
  @JsonKey(ignore: true)
  _$$ListCreationStateImplCopyWith<_$ListCreationStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
