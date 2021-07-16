import 'package:flutter/material.dart';

class ThemeProvider {
  static ThemeData dark(BuildContext context) {
    final theme = ThemeData.dark();

    return ThemeData.dark().copyWith(
      bottomNavigationBarTheme: theme.bottomNavigationBarTheme.copyWith(
        backgroundColor: Color.fromRGBO(41, 41, 38, 1),
      ),
    );
  }

  static ThemeData light(BuildContext context) {
    return ThemeData.light();
  }
}
