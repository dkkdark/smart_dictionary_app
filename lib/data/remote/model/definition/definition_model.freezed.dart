// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'definition_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MeaningModel {
  String? get definition => throw _privateConstructorUsedError;
  String? get example => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MeaningModelCopyWith<MeaningModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MeaningModelCopyWith<$Res> {
  factory $MeaningModelCopyWith(
          MeaningModel value, $Res Function(MeaningModel) then) =
      _$MeaningModelCopyWithImpl<$Res, MeaningModel>;
  @useResult
  $Res call({String? definition, String? example});
}

/// @nodoc
class _$MeaningModelCopyWithImpl<$Res, $Val extends MeaningModel>
    implements $MeaningModelCopyWith<$Res> {
  _$MeaningModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? definition = freezed,
    Object? example = freezed,
  }) {
    return _then(_value.copyWith(
      definition: freezed == definition
          ? _value.definition
          : definition // ignore: cast_nullable_to_non_nullable
              as String?,
      example: freezed == example
          ? _value.example
          : example // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MeaningModelImplCopyWith<$Res>
    implements $MeaningModelCopyWith<$Res> {
  factory _$$MeaningModelImplCopyWith(
          _$MeaningModelImpl value, $Res Function(_$MeaningModelImpl) then) =
      __$$MeaningModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? definition, String? example});
}

/// @nodoc
class __$$MeaningModelImplCopyWithImpl<$Res>
    extends _$MeaningModelCopyWithImpl<$Res, _$MeaningModelImpl>
    implements _$$MeaningModelImplCopyWith<$Res> {
  __$$MeaningModelImplCopyWithImpl(
      _$MeaningModelImpl _value, $Res Function(_$MeaningModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? definition = freezed,
    Object? example = freezed,
  }) {
    return _then(_$MeaningModelImpl(
      definition: freezed == definition
          ? _value.definition
          : definition // ignore: cast_nullable_to_non_nullable
              as String?,
      example: freezed == example
          ? _value.example
          : example // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$MeaningModelImpl implements _MeaningModel {
  const _$MeaningModelImpl({required this.definition, required this.example});

  @override
  final String? definition;
  @override
  final String? example;

  @override
  String toString() {
    return 'MeaningModel(definition: $definition, example: $example)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MeaningModelImpl &&
            (identical(other.definition, definition) ||
                other.definition == definition) &&
            (identical(other.example, example) || other.example == example));
  }

  @override
  int get hashCode => Object.hash(runtimeType, definition, example);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MeaningModelImplCopyWith<_$MeaningModelImpl> get copyWith =>
      __$$MeaningModelImplCopyWithImpl<_$MeaningModelImpl>(this, _$identity);
}

abstract class _MeaningModel implements MeaningModel {
  const factory _MeaningModel(
      {required final String? definition,
      required final String? example}) = _$MeaningModelImpl;

  @override
  String? get definition;
  @override
  String? get example;
  @override
  @JsonKey(ignore: true)
  _$$MeaningModelImplCopyWith<_$MeaningModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
