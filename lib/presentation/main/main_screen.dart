import 'package:flutter/material.dart';
import 'package:smart_dictionary/presentation/common/dictionary_button.dart';
import 'package:smart_dictionary/presentation/common/dictionary_fab.dart';
import 'package:smart_dictionary/presentation/list_creation/list_creation_screen.dart';
import 'package:smart_dictionary/presentation/main/definition_model.dart';
import 'package:smart_dictionary/presentation/main/list_card.dart';
import 'package:smart_dictionary/presentation/models/list_model.dart';
import 'package:smart_dictionary/presentation/models/synonym_model.dart';
import 'package:smart_dictionary/presentation/models/translation_model.dart';
import 'package:smart_dictionary/presentation/models/word_model.dart';
import 'package:smart_dictionary/presentation/theme/colors.dart';
import 'package:smart_dictionary/presentation/word_creation/word_creation_screen.dart';

class MainPageWidget extends StatefulWidget {
  static route() => MaterialPageRoute(
        builder: (context) => const MainPageWidget(),
      );
  const MainPageWidget({super.key});

  @override
  State<MainPageWidget> createState() => _MainPageWidgetState();
}

class _MainPageWidgetState extends State<MainPageWidget> {
  final List<ListModel> listCards = [
    ListModel(
      1,
      "Animals",
      "https://api.iconify.design/cil/animal.svg?color=white",
      [
        WordModel(
          1,
          "annoy",
          [SynonymModel("irritate", 10)],
          [DefinitionModel("agvsdfg s")],
          [TranslationModel("раздражать")],
        )
      ],
    )
  ];

  void onFabClicked() {
    Navigator.push(
      context,
      WordCreationWidget.route(),
    );
  }

  void onCreateListClicked() {
    Navigator.push(
      context,
      ListCreationWidget.route(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: DictionaryFab(
        text: "Слово",
        onPressed: onFabClicked,
        icon: Icons.add,
      ),
      appBar: AppBar(
        backgroundColor: AppColors.backgroundColor,
        automaticallyImplyLeading: false,
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
            DictionaryButton(
              text: 'Создать список',
              onPressed: onCreateListClicked,
            ),
            ListView.builder(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemCount: listCards.length,
              itemBuilder: (context, index) {
                final list = listCards[index];
                return ListCard(
                  title: list.listName,
                  wordCount: list.words.length.toString(),
                  leadingIcon: list.listIcon,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
