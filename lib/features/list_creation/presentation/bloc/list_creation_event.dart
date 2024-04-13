part of 'list_creation_bloc.dart';

@freezed
class ListCreationEvent with _$ListCreationEvent {
  const factory ListCreationEvent.getIcons() = _GetIcons;
  const factory ListCreationEvent.saveList() = _SaveList;
}
