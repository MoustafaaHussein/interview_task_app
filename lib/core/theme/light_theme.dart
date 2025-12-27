import 'package:flutter/material.dart';
import 'package:interview_task_app/core/theme/colors/light_colors.dart';

final ThemeData lightTheme = ThemeData(
  scaffoldBackgroundColor: LightColors.kBackGroundColor,
  brightness: Brightness.light,
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
