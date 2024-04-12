// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'synonym_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SynonymModel _$SynonymModelFromJson(Map<String, dynamic> json) {
  return _SynonymModel.fromJson(json);
}

/// @nodoc
mixin _$SynonymModel {
  String get word => throw _privateConstructorUsedError;
  int get score => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SynonymModelCopyWith<SynonymModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SynonymModelCopyWith<$Res> {
  factory $SynonymModelCopyWith(
          SynonymModel value, $Res Function(SynonymModel) then) =
      _$SynonymModelCopyWithImpl<$Res, SynonymModel>;
  @useResult
  $Res call({String word, int score});
}

/// @nodoc
class _$SynonymModelCopyWithImpl<$Res, $Val extends SynonymModel>
    implements $SynonymModelCopyWith<$Res> {
  _$SynonymModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? word = null,
    Object? score = null,
  }) {
    return _then(_value.copyWith(
      word: null == word
          ? _value.word
          : word // ignore: cast_nullable_to_non_nullable
              as String,
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SynonymModelImplCopyWith<$Res>
    implements $SynonymModelCopyWith<$Res> {
  factory _$$SynonymModelImplCopyWith(
          _$SynonymModelImpl value, $Res Function(_$SynonymModelImpl) then) =
      __$$SynonymModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String word, int score});
}

/// @nodoc
class __$$SynonymModelImplCopyWithImpl<$Res>
    extends _$SynonymModelCopyWithImpl<$Res, _$SynonymModelImpl>
    implements _$$SynonymModelImplCopyWith<$Res> {
  __$$SynonymModelImplCopyWithImpl(
      _$SynonymModelImpl _value, $Res Function(_$SynonymModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? word = null,
    Object? score = null,
  }) {
    return _then(_$SynonymModelImpl(
      word: null == word
          ? _value.word
          : word // ignore: cast_nullable_to_non_nullable
              as String,
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SynonymModelImpl implements _SynonymModel {
  const _$SynonymModelImpl({required this.word, required this.score});

  factory _$SynonymModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SynonymModelImplFromJson(json);

  @override
  final String word;
  @override
  final int score;

  @override
  String toString() {
    return 'SynonymModel(word: $word, score: $score)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SynonymModelImpl &&
            (identical(other.word, word) || other.word == word) &&
            (identical(other.score, score) || other.score == score));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, word, score);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SynonymModelImplCopyWith<_$SynonymModelImpl> get copyWith =>
      __$$SynonymModelImplCopyWithImpl<_$SynonymModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SynonymModelImplToJson(
      this,
    );
  }
}

abstract class _SynonymModel implements SynonymModel {
  const factory _SynonymModel(
      {required final String word,
      required final int score}) = _$SynonymModelImpl;

  factory _SynonymModel.fromJson(Map<String, dynamic> json) =
      _$SynonymModelImpl.fromJson;

  @override
  String get word;
  @override
  int get score;
  @override
  @JsonKey(ignore: true)
  _$$SynonymModelImplCopyWith<_$SynonymModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
