import 'package:flutter/material.dart';
import 'package:interview_task_app/core/constants/constants.dart';
import 'package:interview_task_app/features/authentication/presentation/views/widgets/register_view_body.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: Constants.kHorizontalPadding),
        child: RegisterViewBody(),
      ),
    );
  }
}