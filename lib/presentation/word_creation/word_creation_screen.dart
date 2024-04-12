import 'package:flutter/material.dart';
import 'package:smart_dictionary/presentation/common/dictionary_fab.dart';
import 'package:smart_dictionary/presentation/common/dictionary_text_field.dart';
import 'package:smart_dictionary/presentation/theme/colors.dart';
import 'package:smart_dictionary/presentation/word_creation/list_chosing_button.dart';

class WordCreationWidget extends StatefulWidget {
  static route() => MaterialPageRoute(
        builder: (context) => const WordCreationWidget(),
      );
  const WordCreationWidget({super.key});

  @override
  State<WordCreationWidget> createState() => _WordCreationWidgetState();
}

class _WordCreationWidgetState extends State<WordCreationWidget> {
  void onFabClicked() {
    // TODO
  }

  void backToMain() {
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: DictionaryFab(
        text: "Добавить",
        onPressed: onFabClicked,
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
          onPressed: backToMain,
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
      body: const SafeArea(
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
