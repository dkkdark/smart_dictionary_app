import 'package:hive/hive.dart';
import 'package:smart_dictionary/features/list_creation/data/model/local_entity/list_entity.dart';

abstract interface class ListLocalDataSource {
  void insertList({required ListEntity list});
  List<ListEntity> loadLists();
  void initBox();
}

class ListLocalDataSourceImpl implements ListLocalDataSource {
  ListLocalDataSourceImpl();

  void initBox() async {
    await Hive.openBox<ListEntity>("lists");
  }

  @override
  void insertList({required ListEntity list}) {
    var box = Hive.box<ListEntity>("lists");
    box.add(list);
  }

  @override
  List<ListEntity> loadLists() {
    var box = Hive.box<ListEntity>("lists");
    return box.values.toList();
  }
}
