// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'icon_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

IconModel _$IconModelFromJson(Map<String, dynamic> json) {
  return _IconModel.fromJson(json);
}

/// @nodoc
mixin _$IconModel {
  List<String> get icons => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IconModelCopyWith<IconModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IconModelCopyWith<$Res> {
  factory $IconModelCopyWith(IconModel value, $Res Function(IconModel) then) =
      _$IconModelCopyWithImpl<$Res, IconModel>;
  @useResult
  $Res call({List<String> icons});
}

/// @nodoc
class _$IconModelCopyWithImpl<$Res, $Val extends IconModel>
    implements $IconModelCopyWith<$Res> {
  _$IconModelCopyWithImpl(this._value, this._then);

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
abstract class _$$IconModelImplCopyWith<$Res>
    implements $IconModelCopyWith<$Res> {
  factory _$$IconModelImplCopyWith(
          _$IconModelImpl value, $Res Function(_$IconModelImpl) then) =
      __$$IconModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<String> icons});
}

/// @nodoc
class __$$IconModelImplCopyWithImpl<$Res>
    extends _$IconModelCopyWithImpl<$Res, _$IconModelImpl>
    implements _$$IconModelImplCopyWith<$Res> {
  __$$IconModelImplCopyWithImpl(
      _$IconModelImpl _value, $Res Function(_$IconModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? icons = null,
  }) {
    return _then(_$IconModelImpl(
      icons: null == icons
          ? _value._icons
          : icons // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$IconModelImpl implements _IconModel {
  const _$IconModelImpl({required final List<String> icons}) : _icons = icons;

  factory _$IconModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$IconModelImplFromJson(json);

  final List<String> _icons;
  @override
  List<String> get icons {
    if (_icons is EqualUnmodifiableListView) return _icons;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_icons);
  }

  @override
  String toString() {
    return 'IconModel(icons: $icons)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IconModelImpl &&
            const DeepCollectionEquality().equals(other._icons, _icons));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_icons));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$IconModelImplCopyWith<_$IconModelImpl> get copyWith =>
      __$$IconModelImplCopyWithImpl<_$IconModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$IconModelImplToJson(
      this,
    );
  }
}

abstract class _IconModel implements IconModel {
  const factory _IconModel({required final List<String> icons}) =
      _$IconModelImpl;

  factory _IconModel.fromJson(Map<String, dynamic> json) =
      _$IconModelImpl.fromJson;

  @override
  List<String> get icons;
  @override
  @JsonKey(ignore: true)
  _$$IconModelImplCopyWith<_$IconModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
