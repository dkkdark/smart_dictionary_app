import 'package:freezed_annotation/freezed_annotation.dart';

part 'icon_model.freezed.dart';
part 'icon_model.g.dart';

@freezed
abstract class IconModel with _$IconModel {
  const factory IconModel({required List<String> icons}) = _IconModel;

  factory IconModel.fromJson(Map<String, dynamic> json) =>
      _$IconModelFromJson(json);
}
