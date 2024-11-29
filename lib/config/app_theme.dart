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

  ThemeData changeThemeMode(ThemeData theme, Brightness brightness) {
    //generate new theme mode
    return ThemeData(
      colorScheme: ColorScheme.fromSeed(
        seedColor: theme.colorScheme.primary,
        brightness: brightness,
      ),
    );
  }

  ThemeData changeThemeColor(Color color, Brightness brightness) {
    //generate new color scheme
    return ThemeData(
      colorScheme: ColorScheme.fromSeed(
        seedColor: color,
        brightness: brightness,
      ),
    );
  }
}
