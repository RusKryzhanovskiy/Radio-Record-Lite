import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:record/cubits/player/player_cubit.dart';
import 'package:record/cubits/record/record_cubit.dart';
import 'package:record/screens/home/home_screen.dart';
import 'package:record/utils/locator.dart';
import 'package:record/utils/theme_provider.dart';

class Application extends StatefulWidget {
  const Application({Key? key}) : super(key: key);

  @override
  _ApplicationState createState() => _ApplicationState();
}

class _ApplicationState extends State<Application> {
  late final PlayerCubit playerCubit;
  late final RecordCubit recordCubit;

  @override
  void initState() {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

    registerLocator();

    playerCubit = PlayerCubit()..init();
    recordCubit = RecordCubit()..loadInitialData();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<PlayerCubit>(create: (_) => playerCubit),
        BlocProvider<RecordCubit>(create: (_) => recordCubit),
      ],
      child: MaterialApp(
        title: 'Radio Record Lite',
        debugShowCheckedModeBanner: false,
        theme: ThemeProvider.dark(context),
        home: HomeScreen(),
      ),
    );
  }
}
