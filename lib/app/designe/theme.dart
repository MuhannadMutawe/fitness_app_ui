import 'package:fitness_app_ui/app/designe/designe_token.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    colorSchemeSeed: DT.cardBlue,
    brightness: Brightness.light,
    scaffoldBackgroundColor: DT.bg,
    textTheme: ThemeData.light().textTheme.apply(
      bodyColor: Color(0xFF0F1115),
      displayColor: Color(0xFF0F1115),
    ),

    cardTheme: CardThemeData(
      elevation: 10,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(DT.rCard),
      ),
    ),
  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    primarySwatch: Colors.blue,
    scaffoldBackgroundColor: Colors.grey[900],
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.blue,
      foregroundColor: Colors.white,
    ),
  );
}
