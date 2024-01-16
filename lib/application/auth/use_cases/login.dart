import 'package:dartz/dartz.dart';
import 'package:get_it/get_it.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../domain/auth/enums/enums.dart';
import '../../../domain/auth/errors/errors.dart';
import '../../../domain/auth/repositories/repositories.dart';
import '../../../domain/auth/value_objects/value_objects.dart';
import '../../../domain/user_related/entities/entities.dart';
import '../../../domain/user_related/repositories/i_repositories.dart';
import '../../../infrastructure/auth/repositories/repositories.dart';
import '../../../infrastructure/core/util/util.dart';
import '../../../infrastructure/user_related/repositories/repositories.dart';
import '../../core/routes/app_router.dart';
import '../states/states.dart';

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
    // get the repositories
    final IAuthRepository authRepo = getIt<AuthRepositoryImpl>();
    final IUserRepository userRepo = getIt<UserRepositoryImpl>();
    // get the logger instance
    //final logger = getIt<LoggerInstance>().getLogger();
    // get the random advertisement
    final Either<BaseAuthError, JwtToken> loginResponse =
        await authRepo.login(phone);
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
        final User user = await userRepo.getUserByToken(jwtToken);
        // update tje state of the other
        ref.read(authProvider.notifier).login(user: user, jwtToken: jwtToken);
        state = LoginStateEnum.pass;
        // save the token in the local storage

        // everything good so change page
        ref.read(appRouterProvider.notifier).changeRouterBasedOnLogin();
        ref.read(appRouterProvider).goNamed('home');
      },
    );
  }

  Future<void> loginGuest() async {
    // getIt instance
    GetIt getIt = GetIt.I;
    // get the repository
    final IAuthRepository authRepo = getIt<AuthRepositoryImpl>();
    // get the logger instance
    final logger = getIt<LoggerInstance>().getLogger();
    // get the random advertisement
    final Either<BaseAuthError, JwtToken> loginResponse =
        await authRepo.guestLogin();
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
        ref.read(appRouterProvider).goNamed('home');
      },
    );
  }

  Future<void> loginFromLocalSession() async {
    // getIt instance
    GetIt getIt = GetIt.I;
    // get the repositories
    final IAuthRepository authRepo = getIt<AuthRepositoryImpl>();
    final IUserRepository userRepo = getIt<UserRepositoryImpl>();
    // get the logger instance
    final logger = getIt<LoggerInstance>().getLogger();
    // get the random advertisement
    final Either<BaseAuthError, JwtToken> loginResponse =
        await authRepo.loginFromLocalSession();
    // fold the response to see the response
    await loginResponse.fold(
      (error) async {
        // print the error
        logger.e(error);
        // state does not have to be changed
      },
      (jwtToken) async {
        // print the token
        logger.d('Token from local storage: $jwtToken');
        // the user exists so we need to make a call to the repository to get the user
        final User user = await userRepo.getUserByToken(jwtToken);
        // update tje state of the other
        ref.read(authProvider.notifier).login(user: user, jwtToken: jwtToken);
        state = LoginStateEnum.pass;
        // everything good so change page
        ref.read(appRouterProvider.notifier).changeRouterBasedOnLogin();
        ref.read(appRouterProvider).goNamed('home');
      },
    );
  }
}
