import 'package:flutter_riverpod/legacy.dart';
import 'package:interview_task_app/core/services/service_locator.dart';
import 'package:interview_task_app/features/authentication/presentation/manger/auth_notifier.dart';
import 'package:interview_task_app/features/authentication/presentation/manger/auth_states.dart';

final authProvider = StateNotifierProvider<AuthNotifier, AuthStates>(
  (ref) => getIt<AuthNotifier>(),
);
