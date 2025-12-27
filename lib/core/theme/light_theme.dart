import 'package:flutter/material.dart';
import 'package:interview_task_app/core/theme/colors/dark_colors.dart';
import 'package:interview_task_app/core/theme/colors/light_colors.dart';

final ThemeData lightTheme = ThemeData(
  scaffoldBackgroundColor: LightColors.kBackGroundColor,
  textSelectionTheme: TextSelectionThemeData(
    cursorColor: DarkColors.kFontClicableColor,
    selectionColor: DarkColors.kFontClicableColor,
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: const Color(0xFF0066FD), // button color
      foregroundColor: Colors.white, // text color
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
    ),
  ),
  brightness: Brightness.light,
  buttonTheme: ButtonThemeData(buttonColor: Color(0xFF0066FD)),
  textTheme: TextTheme(
    bodyLarge: TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.bold,
      color: LightColors.kFontPrimaryColor,
    ),
    bodyMedium: TextStyle(fontSize: 16, color: LightColors.kFontSecondryColor),
    bodySmall: TextStyle(fontSize: 14, color: LightColors.kFontSecondryColor),
  ),
);
