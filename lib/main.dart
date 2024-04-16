import 'package:flutter/material.dart';
import 'package:smart_dictionary/dependencies.dart';
import 'package:smart_dictionary/features/list_creation/data/model/local_entity/list_entity.dart';
import 'package:smart_dictionary/features/list_creation/presentation/bloc/list_creation_bloc.dart';
import 'package:smart_dictionary/features/home/presentation/bloc/main_bloc.dart';
import 'package:smart_dictionary/features/home/presentation/widget/main_screen.dart';
import 'package:smart_dictionary/core/theme/theme.dart';
import 'package:smart_dictionary/features/word_creation/presentation/bloc/word_creation_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:path_provider/path_provider.dart';

void main() async {
  //WidgetsFlutterBinding.ensureInitialized();
  //final documentDirectory = await getApplicationDocumentsDirectory();
  await Hive.initFlutter();
  Hive.registerAdapter<ListEntity>(ListEntityAdapter());
  initDependencies();

  runApp(MultiBlocProvider(
    providers: [
      BlocProvider(
        create: (_) => getItInstance<MainBloc>(),
      ),
      BlocProvider(
        create: (_) => getItInstance<ListCreationBloc>(),
      ),
      BlocProvider(
        create: (_) => WordCreationBloc(),
      ),
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Smart Dictionary',
        theme: AppTheme.dartTheme,
        home: const MainPageWidget());
  }
}
