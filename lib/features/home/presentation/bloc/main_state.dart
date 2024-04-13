part of 'main_bloc.dart';

@freezed
class MainState with _$MainState {
  const factory MainState.initial() = _Initial;
  const factory MainState.mainLoadListLoading() = _MainLoadListLoading;
  const factory MainState.mainLoadListSuccess() = _MainLoadListSuccess;
  const factory MainState.mainLoadListError() = _MainLoadListError;
}
