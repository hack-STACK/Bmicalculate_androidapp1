import 'package:finance_app/src/utils/theme/widget_Theme/text_theme.dart';
import 'package:flutter/material.dart';

class NAappTheme {
  // Light theme with light text theme
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    textTheme: NAtextTheme.lightTextTheme,
    elevatedButtonTheme: ElevatedButtonThemeData(style: ElevatedButton.styleFrom())
  );

  // Dark theme with dark text theme
  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    textTheme: NAtextTheme.darkTextTheme,
  );
}
