import 'package:flutter/material.dart';
import 'package:interview_task_app/core/constants/constants.dart';
import 'package:interview_task_app/core/widgets/arrow_back_widget.dart';
import 'package:interview_task_app/features/authentication/presentation/views/widgets/login_view_body.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: ArrowBackWidget()),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: Constants.kHorizontalPadding),
        child: LoginViewBody(),
      ),
    );
  }
}
