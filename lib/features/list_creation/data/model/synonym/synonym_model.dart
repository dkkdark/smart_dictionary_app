import 'package:freezed_annotation/freezed_annotation.dart';

part 'synonym_model.freezed.dart';
part 'synonym_model.g.dart';

@freezed
abstract class SynonymModel with _$SynonymModel {
  const factory SynonymModel({required String word, required int score}) =
      _SynonymModel;

  factory SynonymModel.fromJson(Map<String, dynamic> json) =>
      _$SynonymModelFromJson(json);
}
