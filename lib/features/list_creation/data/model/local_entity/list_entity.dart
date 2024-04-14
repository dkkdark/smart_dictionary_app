import 'package:hive/hive.dart';
import 'package:smart_dictionary/features/list_creation/data/model/local_entity/word_entity.dart';

part 'list_entity.g.dart';

@HiveType(typeId: 0)
class ListEntity extends HiveObject {
  @HiveField(0)
  String name;
  @HiveField(1)
  WordEntity words;

  ListEntity(this.name, this.words);
}
