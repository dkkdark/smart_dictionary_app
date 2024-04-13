import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'main_event.dart';
part 'main_state.dart';
part 'main_bloc.freezed.dart';
//part 'main_bloc.g.dart';

class MainBloc extends Bloc<MainEvent, MainState> {
  MainBloc() : super(const MainState.initial()) {
    on<_LoadWordsLists>(_loadWordsLists);
  }
}

Future<void> _loadWordsLists(
    _LoadWordsLists event, Emitter<MainState> emit) async {
  return;
}
