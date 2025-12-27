import 'package:flutter/material.dart';
import 'package:interview_task_app/core/theme/colors/dark_colors.dart';

final ThemeData darkTheme = ThemeData(
  scaffoldBackgroundColor: DarkColors.backgroundColor,
  brightness: Brightness.dark,
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
