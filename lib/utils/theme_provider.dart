import 'package:flutter/material.dart';

class ThemeProvider {
  static ThemeData dark(BuildContext context) {
    final theme = ThemeData.dark();

    return ThemeData.dark().copyWith(
      appBarTheme: theme.appBarTheme.copyWith(
        centerTitle: true,
        backgroundColor: Color.fromRGBO(21, 20, 20, 1),
      ),
      primaryColor: Color.fromRGBO(238, 109, 31, 1),
      backgroundColor: Color.fromRGBO(21, 20, 20, 1),
      scaffoldBackgroundColor: Color.fromRGBO(21, 20, 20, 1),
      chipTheme: theme.chipTheme.copyWith(
        backgroundColor: Color.fromRGBO(41, 41, 38, 1),
      ),
      bottomNavigationBarTheme: theme.bottomNavigationBarTheme.copyWith(
        backgroundColor: Color.fromRGBO(41, 41, 38, 1),
      ),
    );
  }

  static ThemeData light(BuildContext context) {
    return ThemeData.light();
  }
}
