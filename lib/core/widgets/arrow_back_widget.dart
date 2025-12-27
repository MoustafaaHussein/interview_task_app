import 'package:flutter/material.dart';
import 'package:interview_task_app/core/theme/dark_theme.dart';

class ArrowBackWidget extends StatelessWidget {
  const ArrowBackWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (Navigator.canPop(context)) Navigator.pop(context);
      },
      child: CircleAvatar(
        backgroundColor: darkTheme.cardColor,
        radius: 20,
        child: Icon(Icons.arrow_back_ios),
      ),
    );
  }
}
