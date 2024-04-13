import 'package:flutter/material.dart';
import 'package:smart_dictionary/features/list_creation/data/error/error.dart';
import 'package:smart_dictionary/features/list_creation/data/model/definition/definition_model.dart';
import 'package:dio/dio.dart';

abstract interface class DefinitionSource {
  Future<MeaningModel> getDefinitions({
    required String word,
  });
}

class DefinitionSourceImpl implements DefinitionSource {
  final Dio dioDefinitionsClient;

  DefinitionSourceImpl(this.dioDefinitionsClient);

  @override
  Future<MeaningModel> getDefinitions({required String word}) async {
    try {
      final request = await dioDefinitionsClient.get("entries/en/$word");
      if (request.statusCode != 200) {
        debugPrint("getDefinitions error ${request.statusMessage}");
        throw InvalidResponse(request.statusMessage.toString());
      }
      return MeaningModel.fromJson(request.data);
    } catch (e) {
      debugPrint("getDefinitions error ${e}");
      throw InvalidResponse(e.toString());
    }
  }
}
