import 'package:flutter/material.dart';
import 'package:interview_task_app/core/theme/colors/dark_colors.dart';

final ThemeData darkTheme = ThemeData(
  scaffoldBackgroundColor: DarkColors.backgroundColor,
  brightness: Brightness.dark,
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: const Color(0xFF0066FD), // button color
      foregroundColor: Colors.white, // text color
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
    ),
  ),
  textTheme: TextTheme(
    bodyLarge: TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.bold,
      color: DarkColors.kFontPrimaryColor,
    ),
    bodyMedium: TextStyle(fontSize: 16, color: DarkColors.kFontSecondryColor),
    bodySmall: TextStyle(fontSize: 14, color: DarkColors.kFontSecondryColor),
  ),
);
