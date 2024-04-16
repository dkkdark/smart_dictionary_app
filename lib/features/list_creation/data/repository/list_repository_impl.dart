import 'package:fpdart/src/either.dart';
import 'package:smart_dictionary/core/errors/Failure.dart';
import 'package:smart_dictionary/features/list_creation/data/error/error.dart';
import 'package:smart_dictionary/features/list_creation/data/mapper.dart';
import 'package:smart_dictionary/features/list_creation/data/model/local_entity/definition_entity.dart';
import 'package:smart_dictionary/features/list_creation/data/model/local_entity/list_entity.dart';
import 'package:smart_dictionary/features/list_creation/data/model/local_entity/synonym_entity.dart';
import 'package:smart_dictionary/features/list_creation/data/model/local_entity/translation_entity.dart';
import 'package:smart_dictionary/features/list_creation/data/model/local_entity/word_entity.dart';
import 'package:smart_dictionary/features/list_creation/data/source/icon_source.dart';
import 'package:smart_dictionary/features/list_creation/data/source/local_list_source.dart';
import 'package:smart_dictionary/features/list_creation/domain/model/icon/icon_model.dart';
import 'package:smart_dictionary/features/list_creation/domain/model/list/definition_model.dart';
import 'package:smart_dictionary/features/list_creation/domain/model/list/list_model.dart';
import 'package:smart_dictionary/features/list_creation/domain/model/list/synonym_model.dart';
import 'package:smart_dictionary/features/list_creation/domain/model/list/translation_model.dart';
import 'package:smart_dictionary/features/list_creation/domain/model/list/word_model.dart';
import 'package:smart_dictionary/features/list_creation/domain/repository/list_creation_repository.dart';

class ListCreationRepositoryImpl implements ListCreationRepository {
  final IconSource iconRemoteSource;
  final ListLocalDataSource listLocalDataSource;

  ListCreationRepositoryImpl(this.iconRemoteSource, this.listLocalDataSource);

  @override
  Future<Either<Failure, IconModel>> getIcons({
    required String word,
    required int limit,
  }) async {
    try {
      final result = await iconRemoteSource.getIcons(
        word: word,
        limit: limit,
      );
      List<String> iconsList = result.mapToUrls();
      return right(IconModel(icons: iconsList));
    } on InvalidResponse catch (e) {
      return left(Failure(e.message));
    }
  }

  @override
  Future<Either<Failure, void>> insertList({required ListModel list}) async {
    try {
      void res = listLocalDataSource.insertList(
        list: ListEntity(
          list.name,
          list.icon,
          list.words
              .map(
                (l) => WordEntity(
                  l.word,
                  l.synonym.map((e) => SynonymEntity(e.word, e.score)).toList(),
                  l.definition
                      .map((e) => DefinitionEntity(e.definition, e.example))
                      .toList(),
                  l.translation.map((e) => TranslationEntity(e.text)).toList(),
                ),
              )
              .toList(),
        ),
      );
      return right(res);
    } on InvalidInsert catch (e) {
      return left(Failure(e.message));
    }
  }

  @override
  Future<Either<Failure, List<ListModel>>> loadLists() async {
    try {
      var list = await listLocalDataSource.loadLists();
      var res = list
          .map(
            (l) => ListModel(
                l.name,
                l.icon,
                l.words
                    .map(
                      (k) => WordModel(
                        k.word,
                        k.synonym
                            .map((e) => SynonymModel(e.word, e.score))
                            .toList(),
                        k.definition
                            .map(
                                (e) => DefinitionModel(e.definition, e.example))
                            .toList(),
                        k.translation
                            .map((e) => TranslationModel(e.text))
                            .toList(),
                      ),
                    )
                    .toList()),
          )
          .toList();
      return right(res);
    } on InvalidGet catch (e) {
      return left(Failure(e.message));
    }
  }
}
