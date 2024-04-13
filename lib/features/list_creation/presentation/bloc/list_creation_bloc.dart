import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'list_creation_event.dart';
part 'list_creation_state.dart';
part 'list_creation_bloc.freezed.dart';
//part 'list_creation_bloc.g.dart';

class ListCreationBloc extends Bloc<ListCreationEvent, ListCreationState> {
  ListCreationBloc() : super(const ListCreationState.initial()) {
    on<_GetIcons>(_getIcons);
    on<_SaveList>(_saveList);
  }

  Future<void> _getIcons(
      _GetIcons event, Emitter<ListCreationState> emit) async {
    return;
  }

  Future<void> _saveList(
      _SaveList event, Emitter<ListCreationState> emit) async {
    return;
  }
}
