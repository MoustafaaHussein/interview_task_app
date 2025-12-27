import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:interview_task_app/features/authentication/presentation/views/login_view.dart';
import 'package:interview_task_app/features/authentication/presentation/views/register_view.dart';
import 'package:interview_task_app/features/onboarding/presentation/views/onBoarding_view.dart';
import 'package:interview_task_app/features/splash/presentation/views/splash_view.dart';

abstract class AppRoutes {
  static const kSplashView = '/';
  static const kOnBoardingView = '/onBoardingView';
  static const kLoginView = '/loginView';
  static const kRegisterView = '/registerView';
  static final GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: kSplashView,
        builder: (context, state) {
          return SplashView();
        },
      ),
      GoRoute(
        path: kOnBoardingView,
        builder: (context, state) => OnboardingView(),
      ),

      GoRoute(
        path: kRegisterView,
        pageBuilder: (context, state) => CustomTransitionPage(
          child: const RegisterView(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) =>
              FadeTransition(opacity: animation, child: child),
        ),
      ),
      GoRoute(
        path: kLoginView,
        pageBuilder: (context, state) => CustomTransitionPage(
          child: const LoginView(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) =>
              FadeTransition(opacity: animation, child: child),
        ),
      ),
    ],
  );
}
