import 'dart:io';

import 'package:get_it/get_it.dart';
import 'package:dio/dio.dart';
import 'package:smart_dictionary/features/home/domain/use_case/get_lists_use_case.dart';
import 'package:smart_dictionary/features/home/presentation/bloc/main_bloc.dart';
import 'package:smart_dictionary/features/list_creation/data/model/local_entity/list_entity.dart';
import 'package:smart_dictionary/features/list_creation/data/repository/list_repository_impl.dart';
import 'package:smart_dictionary/features/list_creation/data/source/icon_source.dart';
import 'package:smart_dictionary/features/list_creation/data/source/local_list_source.dart';
import 'package:smart_dictionary/features/list_creation/domain/repository/list_creation_repository.dart';
import 'package:smart_dictionary/features/list_creation/domain/usecase/add_list_use_case.dart';
import 'package:smart_dictionary/features/list_creation/domain/usecase/get_icons_use_case.dart';
import 'package:smart_dictionary/features/list_creation/presentation/bloc/list_creation_bloc.dart';
import 'package:smart_dictionary/features/word_creation/data/source/definition_source.dart';
import 'package:smart_dictionary/features/word_creation/data/source/synonym_source.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:path_provider/path_provider.dart';

final getItInstance = GetIt.instance;

Future<void> initDependencies() async {
  getItInstance.registerLazySingleton(() => Hive.openBox<ListEntity>("lists"));

  _initListCreation();
  _initMain();
  _initWordCreation();
}

void _initListCreation() {
  getItInstance.registerSingleton<Dio>(
    Dio(
      BaseOptions(
        baseUrl: "https://api.iconify.design",
        responseType: ResponseType.json,
      ),
    ),
    instanceName: "iconClient",
  );
  getItInstance.registerFactory<IconSource>(
      () => IconSourceImpl(getItInstance<Dio>(instanceName: "iconClient")));
  getItInstance.registerFactory<ListLocalDataSource>(
      () => ListLocalDataSourceImpl(getItInstance()));
  getItInstance.registerFactory<ListCreationRepository>(
    () => ListCreationRepositoryImpl(
      getItInstance(),
      getItInstance(),
    ),
  );
  getItInstance.registerFactory<GetIconsUseCase>(
    () => GetIconsUseCase(
      getItInstance(),
    ),
  );
  getItInstance.registerFactory<AddListUseCase>(
    () => AddListUseCase(
      getItInstance(),
    ),
  );
  getItInstance.registerLazySingleton(
    () => ListCreationBloc(
        getIconsUseCase: getItInstance(), addList: getItInstance()),
  );
}

void _initMain() {
  getItInstance.registerFactory<GetListsUseCase>(
    () => GetListsUseCase(
      getItInstance(),
    ),
  );
  getItInstance.registerLazySingleton(
    () => MainBloc(getListsUseCase: getItInstance()),
  );
}

void _initWordCreation() {
  getItInstance.registerSingleton<Dio>(
    Dio(
      BaseOptions(
        baseUrl: "https://api.datamuse.com",
        responseType: ResponseType.json,
      ),
    ),
    instanceName: "synonymClient",
  );

  getItInstance.registerSingleton<Dio>(
    Dio(
      BaseOptions(
        baseUrl: "https://api.dictionaryapi.dev/api/v2",
        responseType: ResponseType.json,
      ),
    ),
    instanceName: "definitionClient",
  );
  getItInstance.registerFactory<SynonymSource>(() =>
      SynonymSourceImpl(getItInstance<Dio>(instanceName: "synonymClient")));
  getItInstance.registerFactory<DefinitionSource>(() => DefinitionSourceImpl(
      getItInstance<Dio>(instanceName: "definitionClient")));
}
