import 'package:get_it/get_it.dart';
import 'package:interview_task_app/core/services/firebase_auth_services.dart';
import 'package:interview_task_app/features/authentication/data/data_soruce/auth_remote_data_source.dart';
import 'package:interview_task_app/features/authentication/data/repos/authentication_repositry_implemenetaion.dart';
import 'package:interview_task_app/features/authentication/domain/repos/authentication_repositry.dart';
import 'package:interview_task_app/features/authentication/presentation/manger/auth_notifier.dart';

final getIt = GetIt.instance;
void serviceLocator() {
  getIt.registerSingleton<FirebaseAuthServices>(FirebaseAuthServices());

  getIt.registerSingleton<AuthRemoteDataSource>(
    AuthRemoteDataSourceImpl(FirebaseAuthServices()),
  );
  getIt.registerSingleton<AuthenticationRepository>(
    AuthenticationRepositryImplemenetaion(
      authRemoteDataSource: getIt.get<AuthRemoteDataSource>(),
    ),
  );

  getIt.registerSingleton<AuthNotifier>(
    AuthNotifier(getIt.get<AuthenticationRepository>()),
  );
}
