part of 'list_creation_bloc.dart';

//final class ListNameIsNull extends ListCreationState {}

enum ListCreationStatus {
  initial,
  successfulSaving;

  bool get isInitial => this == ListCreationStatus.initial;
  bool get isSuccessfulSaving => this == ListCreationStatus.successfulSaving;
}

@freezed
class ListCreationState with _$ListCreationState {
  const factory ListCreationState({
    @Default(ListCreationStatus.initial) ListCreationStatus status,
    @Default("") String message,
    @Default(IconModel(icons: [])) IconModel icons,
    @Default("") String failedSaving,
  }) = _ListCreationState;
}
