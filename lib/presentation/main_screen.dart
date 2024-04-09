import 'package:flutter/material.dart';
import 'package:smart_dictionary/presentation/common/dictionary_button.dart';
import 'package:smart_dictionary/presentation/common/dictionary_fab.dart';
import 'package:smart_dictionary/presentation/theme/colors.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({super.key});

  @override
  State<HomePageWidget> createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      floatingActionButton: DictionaryFab(
        text: "Слово",
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
        actions: [],
        centerTitle: false,
        elevation: 2,
      ),
      body: SafeArea(
        top: true,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(16, 16, 16, 16),
              child: DictionaryButton(
                text: 'Создать список',
                onPressed: () => {},
              ),
            ),
            ListView(
                padding: EdgeInsets.zero,
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                children: [
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(12, 0, 12, 0),
                    child: ListTile(
                      leading: const Icon(
                        Icons.directions_bus,
                        size: 34,
                      ),
                      title: const Text(
                        'Транспорт',
                        style: TextStyle(
                          fontSize: 18,
                          letterSpacing: 0,
                        ),
                      ),
                      subtitle: const Text(
                        '0 слов',
                        style: TextStyle(
                          letterSpacing: 0,
                        ),
                      ),
                      trailing: const Icon(
                        Icons.keyboard_arrow_down_sharp,
                        size: 24,
                      ),
                      dense: false,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(12, 0, 12, 0),
                    child: ListTile(
                      leading: const Icon(
                        Icons.hail,
                        size: 34,
                      ),
                      title: const Text(
                        'Animals',
                        style: TextStyle(
                          fontSize: 18,
                          letterSpacing: 0,
                        ),
                      ),
                      subtitle: const Text(
                        '12 слов',
                        style: TextStyle(
                          letterSpacing: 0,
                        ),
                      ),
                      trailing: const Icon(
                        Icons.keyboard_arrow_down_outlined,
                        size: 26,
                      ),
                      dense: false,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                ]),
          ],
        ),
      ),
    );
  }
}
