import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:smart_dictionary/features/list_creation/domain/model/icon/icon_model.dart';
import 'package:smart_dictionary/features/list_creation/domain/usecase/get_icons_use_case.dart';

part 'list_creation_event.dart';
part 'list_creation_state.dart';
part 'list_creation_bloc.freezed.dart';
//part 'list_creation_bloc.g.dart';

class ListCreationBloc extends Bloc<ListCreationEvent, ListCreationState> {
  final GetIconsUseCase _getIconsUseCase;

  ListCreationBloc({required GetIconsUseCase getIconsUseCase})
      : _getIconsUseCase = getIconsUseCase,
        super(
          const ListCreationState(),
        ) {
    on<_GetIcons>(_getIcons);
    on<_SaveList>(_saveList);
  }

  Future<void> _getIcons(
      _GetIcons event, Emitter<ListCreationState> emit) async {
    final res = await _getIconsUseCase(
      GetIconParams(word: event.word, limit: event.limit),
    );
    res.fold(
      (l) => emit(
        state.copyWith(
          status: ListCreationStatus.failure,
          message: l.message,
        ),
      ),
      (r) => emit(
        state.copyWith(
          status: ListCreationStatus.success,
          icons: r,
        ),
      ),
    );
  }

  Future<void> _saveList(
      _SaveList event, Emitter<ListCreationState> emit) async {
    return;
  }
}
