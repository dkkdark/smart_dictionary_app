import 'package:smart_dictionary/features/home/presentation/models/word_model.dart';

class ListModel {
  int id;
  String listName;
  String listIcon;
  List<WordModel> words;

  ListModel(this.id, this.listName, this.listIcon, this.words);
}
