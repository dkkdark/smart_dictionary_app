import 'package:hive/hive.dart';

part 'translation_entity.g.dart';

@HiveType(typeId: 0)
class TranslationEntity extends HiveObject {
  @HiveField(0)
  String text;

  TranslationEntity(this.text);
}
