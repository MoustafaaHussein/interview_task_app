import 'package:interview_task_app/features/authentication/domain/entity/user_entity.dart';

abstract class AuthStates {}

class AuthInitialState extends AuthStates {}

class AuthLoadingState extends AuthStates {}

class LoginSuccessState extends AuthStates {
  final UserEntity userData;

  LoginSuccessState({required this.userData});
}

class RegisterSuccessState extends AuthStates {}

class AuthFailureState extends AuthStates {
  final String errorMessage;
  AuthFailureState(this.errorMessage);
}

class LogoutSuccessState extends AuthStates {}
