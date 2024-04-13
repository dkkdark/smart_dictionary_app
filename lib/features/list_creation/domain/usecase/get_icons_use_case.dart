import 'package:smart_dictionary/core/errors/Failure.dart';
import 'package:smart_dictionary/features/list_creation/domain/model/icon/icon_model.dart';
import 'package:smart_dictionary/features/list_creation/domain/repository/word_creation_repository.dart';
import 'package:fpdart/fpdart.dart';

class GetIconsUseCase {
  final ListCreationRepository homeRepository;
  const GetIconsUseCase(this.homeRepository);

  Future<Either<Failure, IconModel>> call(GetIconParams params) async {
    return await homeRepository.getIcons(
        word: params.word, limit: params.limit);
  }
}

class GetIconParams {
  final String word;
  final int limit;

  GetIconParams({required this.word, required this.limit});
}
