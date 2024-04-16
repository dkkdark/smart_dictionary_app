import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:smart_dictionary/core/common_ui/dictionary_fab.dart';
import 'package:smart_dictionary/core/common_ui/dictionary_text_field.dart';
import 'package:smart_dictionary/core/common_ui/snackbar.dart';
import 'package:smart_dictionary/core/theme/colors.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smart_dictionary/features/list_creation/domain/model/list/list_model.dart';
import 'package:smart_dictionary/features/list_creation/presentation/bloc/list_creation_bloc.dart';

class ListCreationWidget extends StatefulWidget {
  static route() => MaterialPageRoute(
        builder: (context) => const ListCreationWidget(),
      );
  const ListCreationWidget({super.key});

  @override
  State<ListCreationWidget> createState() => _ListCreationState();
}

class _ListCreationState extends State<ListCreationWidget> {
  final double iconSize = 50.0;
  String listName = "";
  String chosenIcon = "";

  void backToMain() {
    Navigator.pop(context);
  }

  void setListName(String name) {
    setState(() {
      listName = name;
    });
  }

  void setIcon(String? icon) {
    setState(() {
      chosenIcon = icon ?? "";
    });
  }

  void onFabClicked() {
    if (chosenIcon.isEmpty) {
      showSnackBar(context, "Please, choose an icon");
    }
    if (listName.isEmpty) {
      showSnackBar(context, "Please, fill in list name");
    }
    context
        .read<ListCreationBloc>()
        .add(ListCreationEvent.saveList(ListModel(listName, chosenIcon, [])));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
      body: BlocConsumer<ListCreationBloc, ListCreationState>(
        listener: (context, state) {
          if (state.message.isNotEmpty) {
            debugPrint("QQQ ${state.message}");
          }
          if (state.status.isSuccessfulSaving) {
            debugPrint("QQQ list was saved");
            backToMain();
          }
          if (state.failedSaving.isNotEmpty) {
            debugPrint("QQQ list was not saved");
          }
        },
        builder: (context, state) {
          return SafeArea(
            top: true,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SizedBox(height: 8.0),
                DictionaryTextField(
                  hint: "Название списка",
                  iconList: null,
                  icon: null,
                  title: null,
                  textValueCallback: (name) => {setListName(name)},
                ),
                const SizedBox(height: 4.0),
                DictionaryTextField(
                  hint: "Поиск иконки",
                  iconList: IconsList(
                    results: state.icons.icons,
                    iconSize: iconSize,
                    onClick: (icon) {
                      debugPrint(icon);
                      setState(() {
                        chosenIcon = icon ?? "";
                      });
                    },
                  ),
                  icon: null,
                  title: null,
                  textValueCallback: (text) => {
                    Future.delayed(const Duration(seconds: 1), () {
                      if (text.length >= 3) {
                        context
                            .read<ListCreationBloc>()
                            .add(ListCreationEvent.getIcons(text, 3));
                      }
                    }),
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
