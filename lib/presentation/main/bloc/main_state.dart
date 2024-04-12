part of 'main_bloc.dart';

@immutable
sealed class MainState {}

final class MainInitial extends MainState {}

final class MainLoadListLoading extends MainState {}

final class MainLoadListSuccess extends MainState {}

final class MainLoadListError extends MainState {}
