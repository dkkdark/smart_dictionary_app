import 'package:hive/hive.dart';

part 'definition_entity.g.dart';

@HiveType(typeId: 0)
class DefinitionEntity extends HiveObject {
  @HiveField(0)
  String definition;
  @HiveField(1)
  String? example;

  DefinitionEntity(this.definition, [this.example]);
}
