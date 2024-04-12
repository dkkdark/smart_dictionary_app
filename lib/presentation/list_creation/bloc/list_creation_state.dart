part of 'list_creation_bloc.dart';

@immutable
sealed class ListCreationState {}

final class ListCreationInitial extends ListCreationState {}

final class SuccessfulSaving extends ListCreationState {}

final class IconsLoading extends ListCreationState {}

final class IconsFailure extends ListCreationState {}

final class IconIsNull extends ListCreationState {}

final class ListNameIsNull extends ListCreationState {}
