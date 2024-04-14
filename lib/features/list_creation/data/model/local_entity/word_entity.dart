import 'package:hive/hive.dart';
import 'package:smart_dictionary/features/list_creation/data/model/local_entity/definition_entity.dart';
import 'package:smart_dictionary/features/list_creation/data/model/local_entity/synonym_entity.dart';
import 'package:smart_dictionary/features/list_creation/data/model/local_entity/translation_entity.dart';

part 'word_entity.g.dart';

@HiveType(typeId: 0)
class WordEntity extends HiveObject {
  @HiveField(0)
  String word;
  @HiveField(1)
  List<SynonymEntity> synonym;
  @HiveField(2)
  List<DefinitionEntity> definition;
  @HiveField(3)
  List<TranslationEntity> translation;

  WordEntity(this.word, this.synonym, this.definition, this.translation);
}
