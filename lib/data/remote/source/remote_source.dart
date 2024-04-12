import 'package:flutter/material.dart';
import 'package:smart_dictionary/data/error/error.dart';
import 'package:smart_dictionary/data/remote/model/definition/definition_model.dart';
import 'package:smart_dictionary/data/remote/model/icon/icon_model.dart';
import 'package:dio/dio.dart';
import 'package:smart_dictionary/data/remote/model/synonym/synonym_model.dart';

abstract interface class RemoteSource {
  Future<IconModel> getIcons({
    required String word,
    required int limit,
  });
  Future<SynonymModel> getSynonyms({
    required String word,
  });
  Future<MeaningModel> getDefinitions({
    required String word,
  });
}

class IconSourceImpl implements RemoteSource {
  final Dio dioIconClient;
  final Dio dioSynonymsClient;
  final Dio dioDefinitionsClient;

  IconSourceImpl(
      this.dioIconClient, this.dioSynonymsClient, this.dioDefinitionsClient);

  @override
  Future<IconModel> getIcons({required String word, required int limit}) async {
    var query = {"word": word, "limit": limit};
    try {
      final request = await dioIconClient.get("search", queryParameters: query);
      if (request.statusCode != 200) {
        debugPrint("getIcon error ${request.statusMessage}");
        throw InvalidResponse(request.statusMessage.toString());
      }
      return IconModel.fromJson(request.data);
    } catch (e) {
      debugPrint("getIcon error ${e}");
      throw InvalidResponse(e.toString());
    }
  }

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
