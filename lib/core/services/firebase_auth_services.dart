import 'package:firebase_auth/firebase_auth.dart';

class FirebaseAuthServices {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  Future<User?> createUser(
    String email,
    String password,
    String userName,
  ) async {
    final response = await _firebaseAuth.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );
    await response.user!.updateProfile(displayName: userName);
    return response.user;
  }

  Future<User?> signInUser(String email, String password) async {
    final response = await _firebaseAuth.signInWithEmailAndPassword(
      email: email,
      password: password,
    );

    return response.user;
  }

  Future<void> signOutUser() async {
    await _firebaseAuth.signOut();
  }
}
