import 'package:dartz/dartz.dart';
import 'package:get_it/get_it.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:streaming_front_app/infrastructure/core/util/util.dart';

import '../../../domain/auth/entities/entities.dart';
import '../../../domain/auth/errors/errors.dart';
import '../../../domain/auth/repositories/repositories.dart';
import '../../../domain/auth/value_objects/value_objects.dart';
import '../../../infrastructure/auth/repositories/repositories.dart';
import 'use_cases.dart';

part 'login.g.dart';

@riverpod
Future<Either<BaseAuthError, JwtToken>> login(
    LoginRef ref, String phone) async {
  // getIt instance
  GetIt getIt = GetIt.I;
  // get the repository
  final IAuthRepository repo = getIt<AuthRepositoryImpl>();
  // get the logger instance
  final logger = getIt<LoggerInstance>().getLogger();
  // get the random advertisement
  final Either<BaseAuthError, JwtToken> loginResponse = await repo.login(phone);
  logger.d(loginResponse.toString());
  // fold the response to see the response
  loginResponse.fold(
    (error) {
      return Left(error);
    },
    (jwtToken) async {
      // the user exists so we need to make a call to the repository to get the user
      final User user = await repo.getUserByToken(jwtToken);
      // update tje state of the other
      ref.read(authProvider.notifier).login(user: user, jwtToken: jwtToken);
      return Right(jwtToken);
    },
  );
  return Left(
    ServerError(message: "Server error"),
  );
}
