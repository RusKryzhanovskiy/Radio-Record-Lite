import 'package:flutter/material.dart';
import 'package:record/widgets/bottom_player_bar.dart';
import 'package:record/widgets/record_app_bar.dart';

class RecordScaffold extends StatelessWidget {
  const RecordScaffold({
    Key? key,
    this.body,
  }) : super(key: key);

  final Widget? body;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: RecordAppBar(),
      bottomNavigationBar: BottomPlayerBar(),
      body: body,
    );
  }
}
