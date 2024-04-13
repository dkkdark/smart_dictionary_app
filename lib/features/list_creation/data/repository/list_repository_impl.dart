import 'package:fpdart/src/either.dart';
import 'package:smart_dictionary/core/errors/Failure.dart';
import 'package:smart_dictionary/features/list_creation/data/error/error.dart';
import 'package:smart_dictionary/features/list_creation/data/source/icon_source.dart';
import 'package:smart_dictionary/features/list_creation/domain/model/icon/icon_model.dart';
import 'package:smart_dictionary/features/list_creation/domain/repository/word_creation_repository.dart';

class ListCreationRepositoryImpl implements ListCreationRepository {
  final IconSource iconRemoteSource;

  ListCreationRepositoryImpl(this.iconRemoteSource);

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
      return right(IconModel(icons: result.icons));
    } on InvalidResponse catch (e) {
      return left(Failure(e.message));
    }
  }
}
