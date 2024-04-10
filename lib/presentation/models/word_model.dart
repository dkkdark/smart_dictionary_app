import 'package:smart_dictionary/presentation/main/definition_model.dart';
import 'package:smart_dictionary/presentation/models/synonym_model.dart';
import 'package:smart_dictionary/presentation/models/translation_model.dart';

class WordModel {
  int id;
  String word;
  List<SynonymModel> synonym;
  List<DefinitionModel> definition;
  List<TranslationModel> translation;

  WordModel(
      this.id, this.word, this.synonym, this.definition, this.translation);
}
