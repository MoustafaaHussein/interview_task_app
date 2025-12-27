import 'package:go_router/go_router.dart';

abstract class AppRoutes {
  static const kSplashView = '/';
  static const kOnBoardingView = '/onBoardingView';
  static final GoRouter router = GoRouter(
    routes: [GoRoute(path: kSplashView, builder: (context, state) {})],
  );
}
