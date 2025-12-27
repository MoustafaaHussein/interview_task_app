import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:interview_task_app/core/constants/images.dart';
import 'package:interview_task_app/core/routes/app_routes.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  void initState() {
    super.initState();
    navigateToOnboarding();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Center(
          child: FittedBox(
            fit: BoxFit.scaleDown,

            child: Image.asset(
              Assets.assetsImagesAppLogo,
              width: 200,
              height: 200,
            ),
          ),
        ),
        SizedBox(height: 30),
        Text("Bookly App", style: Theme.of(context).textTheme.bodyLarge),
      ],
    );
  }

  void navigateToOnboarding() async {
    await Future.delayed(Duration(seconds: 3), () {
      if (!mounted) return;
      GoRouter.of(context).pushReplacement(AppRoutes.kOnBoardingView);
    });
  }
}
