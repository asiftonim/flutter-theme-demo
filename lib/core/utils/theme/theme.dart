import 'package:dark_mood_effect/core/utils/constants/app_colors.dart';
import 'package:flutter/material.dart'  hide AppBarThemeData;

class AppTheme {
  static final lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    textTheme: TextTheme(
      bodyLarge: TextStyle(color: Colors.black),
    ),
    scaffoldBackgroundColor: Color(0xFFF9FAFB),
    appBarTheme: AppBarTheme(
      backgroundColor: Color(0xFFF9FAFB),
      foregroundColor: Colors.black,
    ),
  );

  static final darkTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    textTheme: TextTheme(
      bodyLarge: TextStyle(color: AppColors.secondary),
    ),
    scaffoldBackgroundColor: Color(0xFF121212),
    appBarTheme: AppBarTheme(
      backgroundColor: Color(0xFF121212),
      foregroundColor: Colors.white,
    ),
  );
}
