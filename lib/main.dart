import 'package:flutter/material.dart';
import 'package:smart_dictionary/presentation/list_creation/list_creation_screen.dart';
import 'package:smart_dictionary/presentation/main/main_screen.dart';
import 'package:smart_dictionary/presentation/theme/theme.dart';
import 'package:smart_dictionary/presentation/word_creation/word_creation_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Smart Dictionary',
        theme: AppTheme.dartTheme,
        home: const WordCreationWidget());
  }
}
