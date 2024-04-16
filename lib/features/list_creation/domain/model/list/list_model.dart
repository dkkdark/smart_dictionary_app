import 'package:smart_dictionary/features/list_creation/domain/model/list/word_model.dart';

class ListModel {
  String name;
  String icon;
  List<WordModel> words;

  ListModel(this.name, this.icon, this.words);
}
