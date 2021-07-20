import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:record/gen/assets.gen.dart';

class RecordAppBar extends StatelessWidget implements PreferredSizeWidget {
  const RecordAppBar({Key? key}) : super(key: key);

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(title: Assets.images.logos.logo.svg());
  }
}
