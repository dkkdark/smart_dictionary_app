import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'word_creation_event.dart';
part 'word_creation_state.dart';

class WordCreationBloc extends Bloc<WordCreationEvent, WordCreationState> {
  WordCreationBloc() : super(WordCreationInitial()) {
    on<WordCreationEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
