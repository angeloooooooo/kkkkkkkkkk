import 'package:flutter/material.dart';

ThemeData estilo() {
  ThemeData base = ThemeData.dark();
  return base.copyWith(
      primaryColor: Colors.black,
      colorScheme: ColorScheme.highContrastDark(),
      floatingActionButtonTheme:
          FloatingActionButtonThemeData(backgroundColor: Colors.white));
}
