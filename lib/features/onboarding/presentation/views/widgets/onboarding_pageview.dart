import 'package:flutter/material.dart';
import 'package:interview_task_app/features/onboarding/data/local_data_source/onboarding_data.dart';
import 'package:interview_task_app/features/onboarding/presentation/views/widgets/pageview_items.dart';

class OnboardingPageview extends StatelessWidget {
  const OnboardingPageview({super.key, required this.pageController});
  final PageController pageController;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: PageView.builder(
        controller: pageController,
        itemCount: onBoardList.length,
        itemBuilder: (context, index) {
          final page = onBoardList[index];
          return PageviewItems(
            imagePath: page.imagePath,
            title: page.title,
            subTitle: page.subTitle,
          );
        },
      ),
    );
  }
}
