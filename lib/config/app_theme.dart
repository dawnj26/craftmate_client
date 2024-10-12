import 'package:flutter/material.dart';

class AppTheme {
  const AppTheme();

  ThemeData get theme {
    return ThemeData(
      colorScheme: ColorScheme.fromSeed(
        seedColor: const Color(0xff316A42),
      ),
    );
  }

  ThemeData get darkTheme {
    return ThemeData(
      colorScheme: ColorScheme.fromSeed(
        seedColor: const Color(0xff316A42),
        brightness: Brightness.dark,
      ),
    );
  }
}
