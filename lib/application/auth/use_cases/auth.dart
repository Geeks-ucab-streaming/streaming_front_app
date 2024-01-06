//import 'package:get_it/get_it.dart'; it will be needed for repositories
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:streaming_front_app/presentation/routes/app_router.dart';
import '../../../domain/auth/entities/entities.dart';
import '../../../domain/auth/enums/enums.dart';
import '../../../domain/auth/value_objects/value_objects.dart';

part 'auth.g.dart';

@Riverpod(keepAlive: true)
class Auth extends _$Auth {
  @override
  AuthUserState build() {
    // TODO FIND USER FROM DATABASE
    return AuthUserState(state: AuthStateEnum.unauthenticated);
  }

  void login({
    required User user,
    required JwtToken jwtToken,
  }) {
    state.login(
      user: user,
      jwtToken: jwtToken,
    );
  }

  void logout() {
    state.logout();
    // should save changes to DB
    // update router and go to landing page
    ref.read(appRouterProvider.notifier).changeRouterBasedOnLogout();
    ref.read(appRouterProvider).goNamed('landing');
  }

  // TODO function to get user from local database through a repository
}
