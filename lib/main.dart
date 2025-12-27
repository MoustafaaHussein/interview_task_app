import 'package:flutter/material.dart';
import 'package:interview_task_app/core/routes/app_routes.dart';
import 'package:interview_task_app/core/theme/dark_theme.dart';
import 'package:interview_task_app/core/theme/light_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: ThemeMode.system,
      routerConfig: AppRoutes.router,
      debugShowCheckedModeBanner: false,
    );
  }
}
