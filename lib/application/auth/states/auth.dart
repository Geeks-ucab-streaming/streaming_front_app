//import 'package:get_it/get_it.dart'; it will be needed for repositories
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:streaming_front_app/application/core/routes/app_router.dart';
import 'package:streaming_front_app/domain/auth/data_presentation/data_presentation.dart';
import 'package:streaming_front_app/domain/auth/mappers/mappers.dart';
import 'package:streaming_front_app/domain/user_related/entities/entities.dart';

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

  UserPresentation getUserInfoToShow() {
    return UserPresentationMapper.fromEntityToPresentation(
      state.user as User,
    );
  }

  void updateUser(User user) {
    state.updateUserInfo(
      name: user.getName() as String,
      email: user.getEmail() as String,
      birthdate: user.getBirthday() as DateTime,
      gender: user.getGender() as String,
    );
  }

  // TODO function to get user from local database through a repository
}
