import 'package:dartz/dartz.dart';
import 'package:interview_task_app/core/errors/failure.dart';
import 'package:interview_task_app/features/authentication/domain/entity/user_entity.dart';

abstract class AuthenticationRepository {
  Future<Either<ServiceFailure, UserEntity>> loginWithEmailAndPassowrd(
    String email,
    String password,
  );
  Future<Either<ServiceFailure, UserEntity>> registerWithEmailAndPassword(
    String email,
    String password,
    String userName,
  );
  Future<void> logout();
}
