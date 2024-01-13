import 'package:dartz/dartz.dart';
import 'package:get_it/get_it.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../domain/auth/entities/entities.dart';
import '../../../domain/auth/enums/enums.dart';
import '../../../domain/auth/errors/errors.dart';
import '../../../domain/auth/repositories/repositories.dart';
import '../../../domain/auth/value_objects/value_objects.dart';
import '../../../infrastructure/auth/repositories/repositories.dart';
import '../../../infrastructure/core/util/util.dart';
import '../../core/routes/app_router.dart';
import '../states/states.dart';

part 'sign_in.g.dart';

@Riverpod(keepAlive: true)
class SignInHelper extends _$SignInHelper {
  @override
  String? build() {
    return null;
  }

  Future<void> signIn({
    required String phone,
    required AvailableOperators cellphoneOperator,
  }) async {
    // getIt instance
    GetIt getIt = GetIt.I;
    // get the repository
    final IAuthRepository repo = getIt<AuthRepositoryImpl>();
    // get the logger instance
    final logger = getIt<LoggerInstance>().getLogger();
    // try to sign in the cellphone number
    final Either<BaseAuthError, JwtToken> signInResponse = await repo.signIn(
      phone,
      cellphoneOperator,
    );
    logger.d(
      'Respuesta del repositorio al registro: ${signInResponse.toString()}',
    );
    // fold the response to see the response
    await signInResponse.fold(
      (error) async {
        state = error.message;
      },
      (jwtToken) async {
        // the user now exists so we get it
        final User user = await repo.getUserByToken(jwtToken);
        logger.d(
          'Respuesta del repositorio al get user by token: ${user.toString()}',
        );
        // update the state of auth
        ref.read(authProvider.notifier).login(user: user, jwtToken: jwtToken);
        logger.d(
          'Valor del authState luego del sign-in: ${ref.read(authProvider).toString()}',
        );
        // update own state
        state = null;
        // everything good so change page
        ref.read(appRouterProvider.notifier).changeRouterBasedOnLogin();
        ref.read(appRouterProvider).goNamed('home');
      },
    );
    logger.d(
        'Valor del state del login helper dentro de si mismo: ${state.toString()}');
  }
}
