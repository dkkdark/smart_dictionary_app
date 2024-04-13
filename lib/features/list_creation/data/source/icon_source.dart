import 'package:flutter/material.dart';
import 'package:smart_dictionary/features/list_creation/data/error/error.dart';
import 'package:dio/dio.dart';
import 'package:smart_dictionary/features/list_creation/data/model/icon/icon_response.dart';

abstract interface class IconSource {
  Future<IconResponse> getIcons({
    required String word,
    required int limit,
  });
}

class IconSourceImpl implements IconSource {
  final Dio dioIconClient;

  IconSourceImpl(this.dioIconClient);

  @override
  Future<IconResponse> getIcons(
      {required String word, required int limit}) async {
    var query = {"word": word, "limit": limit};
    try {
      final request = await dioIconClient.get("search", queryParameters: query);
      if (request.statusCode != 200) {
        debugPrint("getIcon error ${request.statusMessage}");
        throw InvalidResponse(request.statusMessage.toString());
      }
      return IconResponse.fromJson(request.data);
    } catch (e) {
      debugPrint("getIcon error ${e}");
      throw InvalidResponse(e.toString());
    }
  }
}
