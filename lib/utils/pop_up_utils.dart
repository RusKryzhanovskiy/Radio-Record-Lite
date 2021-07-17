import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PopUpUtils {
  static void showSnackBar({
    required BuildContext context,
    required String message,
  }) {
    final snackBar = SnackBar(
      content: Text(message, style: TextStyle(fontSize: 16)),
      backgroundColor: Theme.of(context).snackBarTheme.backgroundColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusDirectional.vertical(
          top: Radius.circular(4),
        ),
      ),
    );

    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}
