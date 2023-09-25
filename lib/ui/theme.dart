import 'package:flutter/material.dart';

sealed class AppTheme {
  static ThemeData theme = ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,
      scaffoldBackgroundColor: Colors.black,
      appBarTheme: const AppBarTheme(backgroundColor: Colors.black));
}
