import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:interview_task_app/core/constants/constants.dart';
import 'package:interview_task_app/core/routes/app_routes.dart';
import 'package:interview_task_app/features/authentication/presentation/manger/auth_provider.dart';
import 'package:interview_task_app/features/authentication/presentation/manger/auth_states.dart';
import 'package:interview_task_app/features/authentication/presentation/views/widgets/register_view_body.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: Constants.kHorizontalPadding),
        child: RegisterViewBodyManger(),
      ),
    );
  }
}

class RegisterViewBodyManger extends ConsumerWidget {
  const RegisterViewBodyManger({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authState = ref.watch(authProvider);
    ref.listen(authProvider, (previous, next) {
      if (next is AuthFailureState) {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text(next.errorMessage)));
      } else if (next is RegisterSuccessState) {
        GoRouter.of(context).pushReplacement(AppRoutes.kLoginView);
      }
    });
    return switch (authState) {
      AuthLoadingState() => Center(child: CircularProgressIndicator()),
      _ => RegisterViewBody(),
    };
  }
}
