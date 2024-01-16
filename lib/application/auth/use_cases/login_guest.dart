import 'package:dartz/dartz.dart';
import 'package:get_it/get_it.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../domain/auth/enums/enums.dart';
import '../../../domain/auth/errors/errors.dart';
import '../../../domain/auth/repositories/repositories.dart';
import '../../../domain/auth/value_objects/value_objects.dart';
import '../../../infrastructure/auth/repositories/repositories.dart';
import '../../../infrastructure/core/util/util.dart';
import '../../core/routes/app_router.dart';
import '../states/states.dart';

part 'login_guest.g.dart';

@Riverpod(keepAlive: true)
class LoginHelper extends _$LoginHelper {
  @override
  LoginStateEnum build() {
    return LoginStateEnum.unChange;
  }

  Future<void> loginGuest({required String phone}) async {
    // getIt instance
    GetIt getIt = GetIt.I;
    // get the repository
    final IAuthRepository authRepo = getIt<AuthRepositoryImpl>();
    // get the logger instance
    final logger = getIt<LoggerInstance>().getLogger();
    // get the random advertisement
    final Either<BaseAuthError, JwtToken> loginResponse =
        await authRepo.login(phone);
    // fold the response to see the response
    await loginResponse.fold(
      (error) async {
        // print the error
        logger.e(error);
        // return error
        if (error is ServerError) {
          state = LoginStateEnum.error;
        }
      },
      (jwtToken) async {
        // print the token
        logger.d(jwtToken);
        // update the state of the auth provider
        ref.read(authProvider.notifier).loginGuest(jwtToken: jwtToken);
        state = LoginStateEnum.pass;
        // everything good so change page
        ref.read(appRouterProvider.notifier).changeRouterBasedOnLogin();
        ref.read(appRouterProvider).goNamed('home');
        // TODO the ... menu should not be changes because the person is not registered
      },
    );
  }
}
