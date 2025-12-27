import 'package:interview_task_app/core/constants/images.dart';
import 'package:interview_task_app/features/onboarding/domain/models/onboard_model.dart';

final List<OnboardModel> onBoardList = [
  OnboardModel(
    imagePath: Assets.assetsImagesOnboardingImage1,
    title: 'The "Limitless Discovery" Approach',
    subTitle:
        'Explore thousands of titles across every genre. From timeless classics to modern hits, your next favorite story is waiting for you',
  ),
  OnboardModel(
    imagePath: Assets.assetsImagesOnboardingImage2,
    title: 'Reading Without Limits',
    subTitle:
        'No subscriptions, no hidden fees. Enjoy unlimited access to our entire digital library at absolutely no cost to you.',
  ),
  OnboardModel(
    imagePath: Assets.assetsImagesOnboardingImage3,
    title: 'Your Library, Your Way',
    subTitle:
        'Read anywhere, anytime. Save your favorites, customize your reader, and carry a world of knowledge right in your pocket.',
  ),
];
