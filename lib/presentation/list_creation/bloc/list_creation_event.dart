part of 'list_creation_bloc.dart';

@immutable
sealed class ListCreationEvent {}

final class GetIcons extends ListCreationEvent {}

final class SaveList extends ListCreationEvent {}
