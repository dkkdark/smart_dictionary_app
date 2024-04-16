part of 'main_bloc.dart';

enum MainStatus {
  initial;

  bool get isInitial => this == MainStatus.initial;
}

@freezed
class MainState with _$MainState {
  const factory MainState({
    @Default(MainStatus.initial) MainStatus status,
    @Default("") String message,
    @Default([]) List<ListModel> list,
  }) = _MainState;
}
