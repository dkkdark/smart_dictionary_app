import 'package:hive/hive.dart';

part 'synonym_entity.g.dart';

@HiveType(typeId: 0)
class SynonymEntity extends HiveObject {
  @HiveField(0)
  String word;
  @HiveField(1)
  int score;

  SynonymEntity(this.word, this.score);
}
