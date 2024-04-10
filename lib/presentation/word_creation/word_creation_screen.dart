import 'package:flutter/material.dart';
import 'package:smart_dictionary/presentation/common/dictionary_fab.dart';
import 'package:smart_dictionary/presentation/common/dictionary_text_field.dart';
import 'package:smart_dictionary/presentation/theme/colors.dart';
import 'package:smart_dictionary/presentation/word_creation/button.dart';

class WordCreationWidget extends StatefulWidget {
  const WordCreationWidget({super.key});

  @override
  State<WordCreationWidget> createState() => _WordCreationWidgetState();
}

class _WordCreationWidgetState extends State<WordCreationWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: DictionaryFab(
        text: "Новое слово",
        onPressed: () => {},
        icon: Icons.add,
      ),
      appBar: AppBar(
        backgroundColor: AppColors.backgroundColor,
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_rounded,
            color: Colors.white,
            size: 30,
          ),
          onPressed: () async {
            // Go up
          },
        ),
        title: const Text(
          'Smart Dictionary',
          style: TextStyle(
            color: Colors.white,
            fontSize: 22,
            letterSpacing: 0,
          ),
        ),
        centerTitle: false,
        elevation: 2,
      ),
      body: SafeArea(
        top: true,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            DictionaryTextField(
              hint: "Слово",
              iconList: null,
              icon: "https://api.iconify.design/cil/animal.svg?color=white",
              title: "title",
            ),
          ],
        ),
      ),
    );
  }
}
