// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'icon_m.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

IconM _$IconMFromJson(Map<String, dynamic> json) {
  return _IconM.fromJson(json);
}

/// @nodoc
mixin _$IconM {
  List<String> get icons => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IconMCopyWith<IconM> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IconMCopyWith<$Res> {
  factory $IconMCopyWith(IconM value, $Res Function(IconM) then) =
      _$IconMCopyWithImpl<$Res, IconM>;
  @useResult
  $Res call({List<String> icons});
}

/// @nodoc
class _$IconMCopyWithImpl<$Res, $Val extends IconM>
    implements $IconMCopyWith<$Res> {
  _$IconMCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? icons = null,
  }) {
    return _then(_value.copyWith(
      icons: null == icons
          ? _value.icons
          : icons // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$IconMImplCopyWith<$Res> implements $IconMCopyWith<$Res> {
  factory _$$IconMImplCopyWith(
          _$IconMImpl value, $Res Function(_$IconMImpl) then) =
      __$$IconMImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<String> icons});
}

/// @nodoc
class __$$IconMImplCopyWithImpl<$Res>
    extends _$IconMCopyWithImpl<$Res, _$IconMImpl>
    implements _$$IconMImplCopyWith<$Res> {
  __$$IconMImplCopyWithImpl(
      _$IconMImpl _value, $Res Function(_$IconMImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? icons = null,
  }) {
    return _then(_$IconMImpl(
      icons: null == icons
          ? _value._icons
          : icons // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$IconMImpl implements _IconM {
  const _$IconMImpl({required final List<String> icons}) : _icons = icons;

  factory _$IconMImpl.fromJson(Map<String, dynamic> json) =>
      _$$IconMImplFromJson(json);

  final List<String> _icons;
  @override
  List<String> get icons {
    if (_icons is EqualUnmodifiableListView) return _icons;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_icons);
  }

  @override
  String toString() {
    return 'IconM(icons: $icons)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IconMImpl &&
            const DeepCollectionEquality().equals(other._icons, _icons));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_icons));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$IconMImplCopyWith<_$IconMImpl> get copyWith =>
      __$$IconMImplCopyWithImpl<_$IconMImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$IconMImplToJson(
      this,
    );
  }
}

abstract class _IconM implements IconM {
  const factory _IconM({required final List<String> icons}) = _$IconMImpl;

  factory _IconM.fromJson(Map<String, dynamic> json) = _$IconMImpl.fromJson;

  @override
  List<String> get icons;
  @override
  @JsonKey(ignore: true)
  _$$IconMImplCopyWith<_$IconMImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
