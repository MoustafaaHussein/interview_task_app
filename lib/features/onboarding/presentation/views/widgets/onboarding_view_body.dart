import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:interview_task_app/core/routes/app_routes.dart';
import 'package:interview_task_app/core/widgets/customButton.dart';
import 'package:interview_task_app/features/onboarding/presentation/views/widgets/onboarding_pageview.dart';

class OnboardingViewBody extends StatefulWidget {
  const OnboardingViewBody({super.key});

  @override
  State<OnboardingViewBody> createState() => _OnboardingViewBodyState();
}

class _OnboardingViewBodyState extends State<OnboardingViewBody> {
  late PageController _pageController;
  var currentPage = 0;
  @override
  void initState() {
    _pageController = PageController(initialPage: 0, keepPage: true);
    _pageController.addListener(() {
      setState(() {
        currentPage = _pageController.page!.round();
      });
    });
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        OnboardingPageview(pageController: _pageController),
        SizedBox(height: 30),
        CusttomButton(
          text: currentPage < 2 ? 'Next' : 'Get Started',
          onTap: () {
            handleButtonNavigation();
          },
        ),
        SizedBox(height: 60),
      ],
    );
  }

  void handleButtonNavigation() {
    if (currentPage == 2) {
      GoRouter.of(context).pushReplacement(AppRoutes.kLoginView);
    } else {
      _pageController.nextPage(
        duration: Duration(milliseconds: 1000),
        curve: Easing.standardAccelerate,
      );
    }
  }
}
