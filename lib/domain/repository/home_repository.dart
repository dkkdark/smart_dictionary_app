import 'package:smart_dictionary/core/errors/Failure.dart';
import 'package:fpdart/fpdart.dart';
import 'package:smart_dictionary/domain/model/Icon.dart';

abstract interface class HomeRepository {
  Future<Either<Failure, IconM>> getIcons({
    required String word,
    required int limit,
  });
}
