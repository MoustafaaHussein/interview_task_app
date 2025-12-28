import 'package:interview_task_app/features/authentication/domain/repos/authentication_repositry.dart';
import 'package:interview_task_app/features/authentication/presentation/manger/auth_states.dart';
import 'package:riverpod/legacy.dart';

class AuthNotifier extends StateNotifier<AuthStates> {
  final AuthenticationRepository authenticationRepository;

  AuthNotifier(this.authenticationRepository) : super(AuthInitialState());
  Future<void> loginWithEmailAndPassword(String email, String password) async {
    state = AuthLoadingState();
    var result = await authenticationRepository.loginWithEmailAndPassowrd(
      email,
      password,
    );
    result.fold(
      (error) {
        state = AuthFailureState(error.errorMessage);
      },
      (userEntity) {
        state = LoginSuccessState(userData: userEntity);
      },
    );
  }

  Future<void> regitserWithEmailAndPassword(
    String email,
    String password,
    String userName,
  ) async {
    state = AuthLoadingState();
    var result = await authenticationRepository.registerWithEmailAndPassword(
      email,
      password,
      userName,
    );
    result.fold(
      (errorMessage) {
        state = AuthFailureState(errorMessage.errorMessage);
      },
      (userEntity) {
        state = RegisterSuccessState();
      },
    );
  }

  Future<void> logOut() async {
    state = AuthLoadingState();
    await authenticationRepository.logout();
    state = LogoutSuccessState();
  }
}
