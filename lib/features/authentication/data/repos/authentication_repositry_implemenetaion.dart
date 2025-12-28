import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:interview_task_app/core/errors/failure.dart';
import 'package:interview_task_app/features/authentication/data/data_soruce/auth_remote_data_source.dart';
import 'package:interview_task_app/features/authentication/domain/entity/user_entity.dart';
import 'package:interview_task_app/features/authentication/domain/repos/authentication_repositry.dart';

class AuthenticationRepositryImplemenetaion
    implements AuthenticationRepository {
  final AuthRemoteDataSource authRemoteDataSource;

  AuthenticationRepositryImplemenetaion({required this.authRemoteDataSource});

  @override
  Future<Either<ServiceFailure, UserEntity>> loginWithEmailAndPassowrd(
    String email,
    String password,
  ) async {
    try {
      final response = await authRemoteDataSource.loginWithEmailAndPassowrd(
        email,
        password,
      );
      return right(
        UserEntity(
          response.displayName ?? '',
          uid: response.uid,
          email: response.email ?? '',
        ),
      );
    } catch (e) {
      if (e is FirebaseAuthException) {
        return left(ServiceFailure.fromFirebaseAuth(e));
      } else {
        return left(ServiceFailure(errorMessage: 'Unexpected error'));
      }
    }
  }

  @override
  Future<void> logout() async {
    await authRemoteDataSource.logout();
  }

  @override
  Future<Either<ServiceFailure, UserEntity>> registerWithEmailAndPassword(
    String email,
    String password,
    String userName,
  ) async {
    try {
      final response = await authRemoteDataSource.registerWithEmailAndPassword(
        email,
        password,
        userName,
      );
      return right(
        UserEntity(
          response.displayName ?? '',
          uid: response.uid,
          email: response.email ?? '',
        ),
      );
    } on Exception catch (e) {
      if (e is FirebaseAuthException) {
        return left(ServiceFailure.fromFirebaseAuth(e));
      } else {
        return left(ServiceFailure(errorMessage: 'Unexpected error'));
      }
    }
  }
}
