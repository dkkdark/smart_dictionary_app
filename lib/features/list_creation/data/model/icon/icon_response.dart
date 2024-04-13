import 'package:freezed_annotation/freezed_annotation.dart';

part 'icon_response.freezed.dart';
part 'icon_response.g.dart';

@freezed
abstract class IconResponse with _$IconResponse {
  const factory IconResponse({required List<String> icons}) = _IconResponse;

  factory IconResponse.fromJson(Map<String, dynamic> json) =>
      _$IconResponseFromJson(json);
}
