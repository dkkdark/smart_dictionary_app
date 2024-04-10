import 'package:flutter/material.dart';
import 'package:smart_dictionary/presentation/common/dictionary_button.dart';
import 'package:smart_dictionary/presentation/common/dictionary_fab.dart';
import 'package:smart_dictionary/presentation/main/definition_model.dart';
import 'package:smart_dictionary/presentation/main/list_card.dart';
import 'package:smart_dictionary/presentation/models/list_model.dart';
import 'package:smart_dictionary/presentation/models/synonym_model.dart';
import 'package:smart_dictionary/presentation/models/translation_model.dart';
import 'package:smart_dictionary/presentation/models/word_model.dart';
import 'package:smart_dictionary/presentation/theme/colors.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({super.key});

  @override
  State<HomePageWidget> createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: DictionaryFab(
        text: "Слово",
        onPressed: () => {},
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
              onPressed: () => {},
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
