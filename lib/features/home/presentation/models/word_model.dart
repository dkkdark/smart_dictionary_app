import 'package:smart_dictionary/features/home/presentation/widget/definition_model.dart';
import 'package:smart_dictionary/features/home/presentation/models/synonym_model.dart';
import 'package:smart_dictionary/features/home/presentation/models/translation_model.dart';

class WordModel {
  int id;
  String word;
  List<SynonymModel> synonym;
  List<DefinitionModel> definition;
  List<TranslationModel> translation;

  WordModel(
      this.id, this.word, this.synonym, this.definition, this.translation);
}
