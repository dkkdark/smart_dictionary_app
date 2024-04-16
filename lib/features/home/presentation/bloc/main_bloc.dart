import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:smart_dictionary/features/home/domain/use_case/get_lists_use_case.dart';
import 'package:smart_dictionary/features/list_creation/domain/model/list/list_model.dart';

part 'main_event.dart';
part 'main_state.dart';
part 'main_bloc.freezed.dart';
//part 'main_bloc.g.dart';

class MainBloc extends Bloc<MainEvent, MainState> {
  final GetListsUseCase _getListsUseCase;

  MainBloc({required GetListsUseCase getListsUseCase})
      : _getListsUseCase = getListsUseCase,
        super(const MainState()) {
    on<_LoadWordsLists>(_loadWordsLists);
  }

  Future<void> _loadWordsLists(
      _LoadWordsLists event, Emitter<MainState> emit) async {
    final res = await _getListsUseCase();
    res.fold((l) => emit(state.copyWith(message: l.message)),
        (r) => emit(state.copyWith(list: r)));
  }
}
