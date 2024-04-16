part of 'main_bloc.dart';

@freezed
class MainEvent with _$MainEvent {
  const factory MainEvent.loadWordsLists() = _LoadWordsLists;
  const factory MainEvent.initHiveBox() = _InitHiveBox;
}
