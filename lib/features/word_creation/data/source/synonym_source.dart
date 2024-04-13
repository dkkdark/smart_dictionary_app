import 'package:flutter/material.dart';
import 'package:smart_dictionary/features/list_creation/data/error/error.dart';
import 'package:dio/dio.dart';
import 'package:smart_dictionary/features/list_creation/data/model/synonym/synonym_model.dart';

abstract interface class SynonymSource {
  Future<SynonymModel> getSynonyms({
    required String word,
  });
}

class SynonymSourceImpl implements SynonymSource {
  final Dio dioSynonymsClient;

  SynonymSourceImpl(this.dioSynonymsClient);

  @override
  Future<SynonymModel> getSynonyms({required String word}) async {
    var query = {"rel_syn": word};
    try {
      final request =
          await dioSynonymsClient.get("words", queryParameters: query);
      if (request.statusCode != 200) {
        debugPrint("getSynonyms error ${request.statusMessage}");
        throw InvalidResponse(request.statusMessage.toString());
      }
      return SynonymModel.fromJson(request.data);
    } catch (e) {
      debugPrint("getSynonyms error ${e}");
      throw InvalidResponse(e.toString());
    }
  }
}
