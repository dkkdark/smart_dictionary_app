import 'package:smart_dictionary/core/errors/Failure.dart';
import 'package:smart_dictionary/features/list_creation/domain/model/list/list_model.dart';
import 'package:smart_dictionary/features/list_creation/domain/repository/list_creation_repository.dart';
import 'package:fpdart/fpdart.dart';

class AddListUseCase {
  final ListCreationRepository homeRepository;
  const AddListUseCase(this.homeRepository);

  Future<Either<Failure, void>> call(ListModel list) async {
    return await homeRepository.insertList(list: list);
  }
}
