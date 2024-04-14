import 'package:smart_dictionary/features/list_creation/domain/model/list/definition_model.dart';
import 'package:smart_dictionary/features/list_creation/domain/model/list/synonym_model.dart';
import 'package:smart_dictionary/features/list_creation/domain/model/list/translation_model.dart';

class WordModel {
  String word;
  List<SynonymModel> synonym;
  List<DefinitionModel> definition;
  List<TranslationModel> translation;

  WordModel(this.word, this.synonym, this.definition, this.translation);
}
