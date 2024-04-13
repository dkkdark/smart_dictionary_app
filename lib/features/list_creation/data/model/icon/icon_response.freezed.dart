// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'icon_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

IconResponse _$IconResponseFromJson(Map<String, dynamic> json) {
  return _IconResponse.fromJson(json);
}

/// @nodoc
mixin _$IconResponse {
  List<String> get icons => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IconResponseCopyWith<IconResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IconResponseCopyWith<$Res> {
  factory $IconResponseCopyWith(
          IconResponse value, $Res Function(IconResponse) then) =
      _$IconResponseCopyWithImpl<$Res, IconResponse>;
  @useResult
  $Res call({List<String> icons});
}

/// @nodoc
class _$IconResponseCopyWithImpl<$Res, $Val extends IconResponse>
    implements $IconResponseCopyWith<$Res> {
  _$IconResponseCopyWithImpl(this._value, this._then);

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
abstract class _$$IconResponseImplCopyWith<$Res>
    implements $IconResponseCopyWith<$Res> {
  factory _$$IconResponseImplCopyWith(
          _$IconResponseImpl value, $Res Function(_$IconResponseImpl) then) =
      __$$IconResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<String> icons});
}

/// @nodoc
class __$$IconResponseImplCopyWithImpl<$Res>
    extends _$IconResponseCopyWithImpl<$Res, _$IconResponseImpl>
    implements _$$IconResponseImplCopyWith<$Res> {
  __$$IconResponseImplCopyWithImpl(
      _$IconResponseImpl _value, $Res Function(_$IconResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? icons = null,
  }) {
    return _then(_$IconResponseImpl(
      icons: null == icons
          ? _value._icons
          : icons // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$IconResponseImpl implements _IconResponse {
  const _$IconResponseImpl({required final List<String> icons})
      : _icons = icons;

  factory _$IconResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$IconResponseImplFromJson(json);

  final List<String> _icons;
  @override
  List<String> get icons {
    if (_icons is EqualUnmodifiableListView) return _icons;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_icons);
  }

  @override
  String toString() {
    return 'IconResponse(icons: $icons)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IconResponseImpl &&
            const DeepCollectionEquality().equals(other._icons, _icons));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_icons));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$IconResponseImplCopyWith<_$IconResponseImpl> get copyWith =>
      __$$IconResponseImplCopyWithImpl<_$IconResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$IconResponseImplToJson(
      this,
    );
  }
}

abstract class _IconResponse implements IconResponse {
  const factory _IconResponse({required final List<String> icons}) =
      _$IconResponseImpl;

  factory _IconResponse.fromJson(Map<String, dynamic> json) =
      _$IconResponseImpl.fromJson;

  @override
  List<String> get icons;
  @override
  @JsonKey(ignore: true)
  _$$IconResponseImplCopyWith<_$IconResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
