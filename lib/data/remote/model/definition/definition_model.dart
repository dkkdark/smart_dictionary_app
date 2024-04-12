import 'package:freezed_annotation/freezed_annotation.dart';

part 'definition_model.freezed.dart';

@freezed
abstract class MeaningModel with _$MeaningModel {
  const factory MeaningModel(
      {required String? definition, required String? example}) = _MeaningModel;

  factory MeaningModel.fromJson(Map<String, dynamic> json) {
    final meaningsJson =
        (json["meanings"] as List).first as Map<String, dynamic>;
    final definitionsJson =
        (meaningsJson["definitions"] as List).first as Map<String, dynamic>;

    return MeaningModel(
      definition: definitionsJson["definition"] as String? ?? "",
      example: definitionsJson["example"] as String? ?? "",
    );
  }
}
