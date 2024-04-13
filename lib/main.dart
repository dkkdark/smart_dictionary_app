import 'package:flutter/material.dart';
import 'package:smart_dictionary/features/list_creation/presentation/bloc/list_creation_bloc.dart';
import 'package:smart_dictionary/features/list_creation/presentation/widget/list_creation_screen.dart';
import 'package:smart_dictionary/features/home/presentation/bloc/main_bloc.dart';
import 'package:smart_dictionary/features/home/presentation/widget/main_screen.dart';
import 'package:smart_dictionary/core/theme/theme.dart';
import 'package:smart_dictionary/features/word_creation/presentation/bloc/word_creation_bloc.dart';
import 'package:smart_dictionary/features/word_creation/presentation/widget/word_creation_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(MultiBlocProvider(
    providers: [
      BlocProvider(
        create: (_) => MainBloc(),
      ),
      BlocProvider(
        create: (_) => ListCreationBloc(),
      ),
      BlocProvider(
        create: (_) => WordCreationBloc(),
      ),
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Smart Dictionary',
        theme: AppTheme.dartTheme,
        home: const MainPageWidget());
  }
}
