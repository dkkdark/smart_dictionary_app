import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:smart_dictionary/data/remote/model/icon/icon_model.dart';

class DioIconsService {
  final Dio _dio_icons = Dio(
    BaseOptions(
      baseUrl: "https://api.iconify.design",
      responseType: ResponseType.json,
    ),
  );

  final Dio _dio_synonyms = Dio(
    BaseOptions(
      baseUrl: "https://api.datamuse.com",
      responseType: ResponseType.json,
    ),
  );
  final Dio _dio_definitions = Dio(
    BaseOptions(
      baseUrl: "https://api.dictionaryapi.dev/api/v2",
      responseType: ResponseType.json,
    ),
  );
}
