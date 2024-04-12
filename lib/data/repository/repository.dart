import 'package:flutter/src/widgets/icon.dart';
import 'package:fpdart/src/either.dart';
import 'package:smart_dictionary/core/errors/Failure.dart';
import 'package:smart_dictionary/data/error/error.dart';
import 'package:smart_dictionary/data/remote/source/remote_source.dart';
import 'package:smart_dictionary/domain/model/Icon.dart';
import 'package:smart_dictionary/domain/repository/home_repository.dart';

class HomeRepositoryImpl implements HomeRepository {
  final RemoteSource iconRemoteSource;

  HomeRepositoryImpl(this.iconRemoteSource);

  @override
  Future<Either<Failure, IconM>> getIcons({
    required String word,
    required int limit,
  }) async {
    try {
      final result = await iconRemoteSource.getIcons(
        word: word,
        limit: limit,
      );
      return right(IconM(icons: result.icons));
    } on InvalidResponse catch (e) {
      return left(Failure(e.message));
    }
  }
}
