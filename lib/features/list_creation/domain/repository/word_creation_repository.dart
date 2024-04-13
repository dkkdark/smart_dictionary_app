import 'package:smart_dictionary/core/errors/Failure.dart';
import 'package:fpdart/fpdart.dart';
import 'package:smart_dictionary/features/list_creation/domain/model/icon/icon_model.dart';

abstract interface class ListCreationRepository {
  Future<Either<Failure, IconModel>> getIcons({
    required String word,
    required int limit,
  });
}
