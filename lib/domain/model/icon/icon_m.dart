import 'package:freezed_annotation/freezed_annotation.dart';

part 'icon_m.freezed.dart';
part 'icon_m.g.dart';

@freezed
abstract class IconM with _$IconM {
  const factory IconM({required List<String> icons}) = _IconM;

  factory IconM.fromJson(Map<String, dynamic> json) => _$IconMFromJson(json);
}
