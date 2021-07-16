import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:record/blocs/player/player_bloc.dart';
import 'package:record/blocs/record/record_cubit.dart';
import 'package:record/utils/locator.dart';
import 'package:record/utils/theme_provider.dart';

class Application extends StatefulWidget {
  const Application({Key? key}) : super(key: key);

  @override
  _ApplicationState createState() => _ApplicationState();
}

class _ApplicationState extends State<Application> {
  @override
  void initState() {
    registerLocator();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<PlayerCubit>(
          create: (_) => PlayerCubit()..init(),
        ),
        BlocProvider<RecordCubit>(
          create: (_) => RecordCubit()..loadInitialData(),
        ),
      ],
      child: MaterialApp(
        title: 'Radio Record',
        debugShowCheckedModeBanner: false,
        theme: ThemeProvider.dark(context),
        home: Scaffold(),
      ),
    );
  }
}
