import 'package:get_it/get_it.dart';
import 'package:dio/dio.dart';
import 'package:smart_dictionary/features/list_creation/data/repository/list_repository_impl.dart';
import 'package:smart_dictionary/features/list_creation/data/source/icon_source.dart';
import 'package:smart_dictionary/features/list_creation/domain/repository/word_creation_repository.dart';
import 'package:smart_dictionary/features/list_creation/domain/usecase/get_icons_use_case.dart';
import 'package:smart_dictionary/features/word_creation/data/source/definition_source.dart';
import 'package:smart_dictionary/features/word_creation/data/source/synonym_source.dart';

final getItInstance = GetIt.instance;

Future<void> initDependencies() async {
  _initHome();
  _initWordCreation();
}

void _initHome() {
  getItInstance.registerSingleton(
    () => Dio(
      BaseOptions(
        baseUrl: "https://api.iconify.design",
        responseType: ResponseType.json,
      ),
    ),
    instanceName: "iconClient",
  );
  getItInstance.registerFactory<IconSource>(
      () => IconSourceImpl(getItInstance<Dio>(instanceName: "iconClient")));
  getItInstance.registerFactory<ListCreationRepository>(
    () => ListCreationRepositoryImpl(
      getItInstance(),
    ),
  );
  getItInstance.registerFactory<GetIconsUseCase>(
    () => GetIconsUseCase(
      getItInstance(),
    ),
  );
}

void _initWordCreation() {
  getItInstance.registerSingleton(
    () => Dio(
      BaseOptions(
        baseUrl: "https://api.datamuse.com",
        responseType: ResponseType.json,
      ),
    ),
    instanceName: "synonymClient",
  );

  getItInstance.registerSingleton(
    () => Dio(
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
