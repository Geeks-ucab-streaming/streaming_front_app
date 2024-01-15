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
//import '../../../infrastructure/core/util/util.dart';
import '../../../infrastructure/user_related/repositories/repositories.dart';
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
    // get the repositories
    final IAuthRepository authRepo = getIt<AuthRepositoryImpl>();
    final IUserRepository userRepo = getIt<UserRepositoryImpl>();
    // get the logger instance
    //final logger = getIt<LoggerInstance>().getLogger();
    // try to sign in the cellphone number
    final Either<BaseAuthError, JwtToken> signInResponse =
        await authRepo.signIn(
      phone,
      cellphoneOperator,
    );

    // fold the response to see the response
    await signInResponse.fold(
      (error) async {
        state = error.message;
      },
      (jwtToken) async {
        // the user now exists so we get it
        final User user = await userRepo.getUserByToken(jwtToken);

        // update the state of auth
        ref.read(authProvider.notifier).login(user: user, jwtToken: jwtToken);

        // update own state
        state = null;
        // everything good so change page
        ref.read(appRouterProvider.notifier).changeRouterBasedOnLogin();
        ref.read(appRouterProvider).goNamed('home');
      },
    );
  }
}
