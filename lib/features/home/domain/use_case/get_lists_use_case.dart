import 'package:smart_dictionary/features/list_creation/domain/model/list/list_model.dart';

import '../../../../core/errors/Failure.dart';
import '../../../list_creation/domain/repository/list_creation_repository.dart';
import 'package:fpdart/fpdart.dart';

class GetListsUseCase {
  final ListCreationRepository homeRepository;
  const GetListsUseCase(this.homeRepository);

  Future<Either<Failure, List<ListModel>>> call() async {
    return await homeRepository.loadLists();
  }
}
