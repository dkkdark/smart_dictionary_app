import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:smart_dictionary/features/list_creation/data/error/error.dart';
import 'package:smart_dictionary/features/list_creation/data/model/local_entity/list_entity.dart';

abstract interface class ListLocalDataSource {
  void insertList({required ListEntity list});
  Future<List<ListEntity>> loadLists();
}

class ListLocalDataSourceImpl implements ListLocalDataSource {
  final Future<Box<ListEntity>> box;
  ListLocalDataSourceImpl(this.box);

  @override
  void insertList({required ListEntity list}) async {
    try {
      //var box = Hive.box<ListEntity>("lists");
      (await box).add(list);
    } catch (e) {
      debugPrint("e ${e}");
      throw InvalidInsert("Cannot add your list");
    }
  }

  @override
  Future<List<ListEntity>> loadLists() async {
    try {
      //var box = Hive.box<ListEntity>("lists");
      return (await box).values.toList();
    } catch (e) {
      debugPrint("e ${e}");
      throw InvalidGet("Cannot load lists");
    }
  }
}
