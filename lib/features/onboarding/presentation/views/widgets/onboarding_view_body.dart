import 'package:flutter/material.dart';
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
    super.initState();
    _pageController = PageController(initialPage: 0, keepPage: true);
    _pageController.addListener(() {
      setState(() {
        currentPage = _pageController.page!.round();
      });
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
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
      //  Navigate to home
    } else {
      _pageController.nextPage(
        duration: Duration(milliseconds: 1000),
        curve: Easing.standardAccelerate,
      );
    }
  }
}
