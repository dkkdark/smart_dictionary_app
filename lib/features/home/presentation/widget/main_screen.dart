import 'package:flutter/material.dart';
import 'package:smart_dictionary/core/common_ui/dictionary_button.dart';
import 'package:smart_dictionary/core/common_ui/dictionary_fab.dart';
import 'package:smart_dictionary/features/home/presentation/bloc/main_bloc.dart';
import 'package:smart_dictionary/features/list_creation/presentation/widget/list_creation_screen.dart';
import 'package:smart_dictionary/features/home/presentation/widget/list_card.dart';
import 'package:smart_dictionary/core/theme/colors.dart';
import 'package:smart_dictionary/features/word_creation/presentation/widget/word_creation_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainPageWidget extends StatefulWidget {
  static route() => MaterialPageRoute(
        builder: (context) => const MainPageWidget(),
      );
  const MainPageWidget({super.key});

  @override
  State<MainPageWidget> createState() => _MainPageWidgetState();
}

class _MainPageWidgetState extends State<MainPageWidget> {
  void onFabClicked() async {
    await Navigator.push(
      context,
      WordCreationWidget.route(),
    );
    if (mounted) {
      context.read<MainBloc>().add(const MainEvent.loadWordsLists());
    }
  }

  void onCreateListClicked() async {
    await Navigator.push(
      context,
      ListCreationWidget.route(),
    );
    if (mounted) {
      context.read<MainBloc>().add(const MainEvent.loadWordsLists());
    }
  }

  @override
  Widget build(BuildContext context) {
    context.read<MainBloc>().add(const MainEvent.loadWordsLists());

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
      body: BlocConsumer<MainBloc, MainState>(
        listener: (context, state) {},
        builder: (context, state) {
          return SafeArea(
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
                  itemCount: state.list.length,
                  itemBuilder: (context, index) {
                    final el = state.list[index];
                    return ListCard(
                      title: el.name,
                      wordCount: el.words.length.toString(),
                      leadingIcon: el.icon,
                    );
                  },
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
