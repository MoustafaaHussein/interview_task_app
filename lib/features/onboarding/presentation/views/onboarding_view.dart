import 'package:flutter/material.dart';
import 'package:interview_task_app/core/constants/constants.dart';
import 'package:interview_task_app/features/onboarding/presentation/views/widgets/onBoarding_view_body.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: Constants.kHorizontalPadding),
        child: OnboardingViewBody(),
      ),
    );
  }
}
