import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'list_creation_event.dart';
part 'list_creation_state.dart';

class ListCreationBloc extends Bloc<ListCreationEvent, ListCreationState> {
  ListCreationBloc() : super(ListCreationInitial()) {
    on<ListCreationEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
