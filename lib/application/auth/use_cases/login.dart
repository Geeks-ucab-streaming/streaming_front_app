import 'package:dartz/dartz.dart';
import 'package:get_it/get_it.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:streaming_front_app/domain/auth/enums/enums.dart';
import 'package:streaming_front_app/infrastructure/core/util/util.dart';

import '../../../domain/auth/entities/entities.dart';
import '../../../domain/auth/errors/errors.dart';
import '../../../domain/auth/repositories/repositories.dart';
import '../../../domain/auth/value_objects/value_objects.dart';
import '../../../infrastructure/auth/repositories/repositories.dart';
import 'use_cases.dart';

part 'login.g.dart';

@Riverpod(keepAlive: true)
class LoginHelper extends _$LoginHelper {
  @override
  LoginStateEnum build() {
    return LoginStateEnum.unChange;
  }

  Future<void> login({required String phone}) async {
    // getIt instance
    GetIt getIt = GetIt.I;
    // get the repository
    final IAuthRepository repo = getIt<AuthRepositoryImpl>();
    // get the logger instance
    final logger = getIt<LoggerInstance>().getLogger();
    // get the random advertisement
    final Either<BaseAuthError, JwtToken> loginResponse =
        await repo.login(phone);
    logger.d('Respuesta del repositorio al login: ${loginResponse.toString()}');
    // fold the response to see the response
    await loginResponse.fold(
      (error) async {
        if (error is ServerError) {
          state = LoginStateEnum.error;
        } else if (error is PhoneNotRegistered) {
          state = LoginStateEnum.wrongValues;
        }
      },
      (jwtToken) async {
        // the user exists so we need to make a call to the repository to get the user
        final User user = await repo.getUserByToken(jwtToken);
        logger.d(
            'Respuesta del repositorio al get user by token: ${user.toString()}');
        // update tje state of the other
        ref.read(authProvider.notifier).login(user: user, jwtToken: jwtToken);
        logger.d(
            'Valor del authState luego del login: ${ref.read(authProvider).toString()}');
        state = LoginStateEnum.pass;
      },
    );
    logger.d(
        'Valor del state del login helper dentro de si mismo: ${state.toString()}');
  }
}
