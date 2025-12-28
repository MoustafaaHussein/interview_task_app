import 'package:firebase_auth/firebase_auth.dart';
import 'package:interview_task_app/core/services/firebase_auth_services.dart';

abstract class AuthRemoteDataSource {
  Future<User> loginWithEmailAndPassowrd(String email, String password);
  Future<User> registerWithEmailAndPassword(
    String email,
    String password,
    String userName,
  );
  Future<void> logout();
}

class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  final FirebaseAuthServices _firebaseAuth;

  AuthRemoteDataSourceImpl(this._firebaseAuth);

  @override
  Future<User> loginWithEmailAndPassowrd(String email, String password) async {
    final response = await _firebaseAuth.signInUser(email, password);
    return response!;
  }

  @override
  Future<User> registerWithEmailAndPassword(
    String email,
    String password,
    String userName,
  ) async {
    final response = await _firebaseAuth.createUser(email, password, userName);

    return response!;
  }

  @override
  Future<void> logout() async {
    await _firebaseAuth.signOutUser();
  }
}
