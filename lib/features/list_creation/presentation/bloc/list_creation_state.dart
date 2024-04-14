part of 'list_creation_bloc.dart';

//final class ListNameIsNull extends ListCreationState {}

enum ListCreationStatus {
  initial,
  loading,
  success,
  failure;

  bool get isInitial => this == ListCreationStatus.initial;
  bool get isLoading => this == ListCreationStatus.loading;
  bool get isSuccess => this == ListCreationStatus.success;
  bool get isFailure => this == ListCreationStatus.failure;
}

@freezed
class ListCreationState with _$ListCreationState {
  const factory ListCreationState({
    @Default(ListCreationStatus.initial) ListCreationStatus status,
    @Default("") String message,
    @Default(IconModel(icons: [])) IconModel icons,
  }) = _ListCreationState;
}
