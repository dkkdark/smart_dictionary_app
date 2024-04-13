part of 'list_creation_bloc.dart';

//final class ListNameIsNull extends ListCreationState {}

@freezed
class ListCreationState with _$ListCreationState {
  const factory ListCreationState.initial() = _Initial;
  const factory ListCreationState.successfulListSaving() =
      _SuccessfulListSaving;
  const factory ListCreationState.iconsLoading() = _IconsLoading;
  const factory ListCreationState.iconsFailure() = _IconsFailure;
  const factory ListCreationState.iconIsNull() = _IconIsNull;
  const factory ListCreationState.iconSuccessfull() = _IconSuccessfull;
}
