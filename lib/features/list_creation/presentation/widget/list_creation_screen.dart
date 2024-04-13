import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:smart_dictionary/core/common_ui/dictionary_fab.dart';
import 'package:smart_dictionary/core/common_ui/dictionary_text_field.dart';
import 'package:smart_dictionary/core/theme/colors.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ListCreationWidget extends StatefulWidget {
  static route() => MaterialPageRoute(
        builder: (context) => const ListCreationWidget(),
      );
  const ListCreationWidget({super.key});

  @override
  State<ListCreationWidget> createState() => _ListCreationState();
}

class _ListCreationState extends State<ListCreationWidget> {
  final TextEditingController _firstController = TextEditingController();
  final TextEditingController _secondController = TextEditingController();

  final double iconSize = 50.0;

  final List<String> _results = [
    "https://api.iconify.design/cil/animal.svg?color=white",
    "https://api.iconify.design/material-symbols/animation.svg?color=white",
    "https://api.iconify.design/fluent/animal-cat-16-filled.svg?color=white",
    "https://api.iconify.design/fluent/animal-cat-16-regular.svg?color=white",
    "https://api.iconify.design/fluent/animal-cat-20-filled.svg?color=white",
    "https://api.iconify.design/fluent/animal-cat-20-regular.svg?color=white",
    "https://api.iconify.design/fluent/animal-cat-24-filled.svg?color=white",
    "https://api.iconify.design/fluent/animal-cat-24-regular.svg?color=white"
  ];

  void backToMain() {
    Navigator.pop(context);
  }

  void onFabClicked() {
    // TODO
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
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 8.0),
              const DictionaryTextField(
                hint: "Название списка",
                iconList: null,
                icon: null,
                title: null,
              ),
              const SizedBox(height: 4.0),
              DictionaryTextField(
                hint: "Поиск иконки",
                iconList: IconsList(results: _results, iconSize: iconSize),
                icon: null,
                title: null,
              ),
            ],
          ),
        ));
  }
}
