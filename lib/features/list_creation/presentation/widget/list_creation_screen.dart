import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:smart_dictionary/core/common_ui/dictionary_fab.dart';
import 'package:smart_dictionary/core/common_ui/dictionary_text_field.dart';
import 'package:smart_dictionary/core/theme/colors.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
  final TextEditingController _textController = TextEditingController();
  final TextEditingController _secondController = TextEditingController();

  final double iconSize = 50.0;

  void backToMain() {
    Navigator.pop(context);
  }

  void onFabClicked() {
    // TODO
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
          if (state.status.isFailure) {
            debugPrint("QQQ ${state.message}");
          }
          print("eee ${state.icons}");
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
                  textValueCallback: (p0) => {},
                ),
                const SizedBox(height: 4.0),
                DictionaryTextField(
                  hint: "Поиск иконки",
                  iconList:
                      IconsList(results: state.icons.icons, iconSize: iconSize),
                  icon: null,
                  title: null,
                  textValueCallback: (text) => {
                    if (text.length >= 3)
                      {
                        context
                            .read<ListCreationBloc>()
                            .add(ListCreationEvent.getIcons(text, 3))
                      }
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
