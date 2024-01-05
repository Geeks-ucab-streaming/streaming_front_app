//import 'package:get_it/get_it.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
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

  // TODO function to get user from local database through a repository
}
