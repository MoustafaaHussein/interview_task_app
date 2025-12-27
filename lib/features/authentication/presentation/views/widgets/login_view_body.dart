import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:interview_task_app/core/routes/app_routes.dart';
import 'package:interview_task_app/core/theme/colors/dark_colors.dart';
import 'package:interview_task_app/core/widgets/customButton.dart';
import 'package:interview_task_app/features/authentication/presentation/views/widgets/custom_password_field.dart';
import 'package:interview_task_app/features/authentication/presentation/views/widgets/custom_text_field.dart';

class LoginViewBody extends StatelessWidget {
  LoginViewBody({super.key});
  final GlobalKey<FormState> _formKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 40),
            Text("Sign In", style: Theme.of(context).textTheme.titleLarge),
            SizedBox(height: 30),
            Text(
              "Email",
              style: Theme.of(context).textTheme.bodyMedium,
              textAlign: TextAlign.left,
            ),
            CustomTextField(),
            SizedBox(height: 30),
            Text(
              "Password",
              style: Theme.of(context).textTheme.bodyMedium,
              textAlign: TextAlign.left,
            ),
            CustomPasswordField(onSaved: (value) {}),

            SizedBox(height: 60),
            CusttomButton(
              text: "Login",
              onTap: () {
                if (_formKey.currentState!.validate()) {
                  _formKey.currentState!.save();
                  // TODO handle Login from here
                }
              },
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,

              children: [
                Text(
                  "Don't have an account?",
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                GestureDetector(
                  onTap: () =>
                      GoRouter.of(context).push(AppRoutes.kRegisterView),
                  child: Text(
                    "Sign up",
                    style: TextStyle(color: DarkColors.kFontClicableColor),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
