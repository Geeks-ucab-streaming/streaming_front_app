//import 'package:get_it/get_it.dart'; it will be needed for repositories
import 'package:get_it/get_it.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:streaming_front_app/application/core/music_player/music_player.dart';
import 'package:streaming_front_app/application/core/routes/app_router.dart';
import 'package:streaming_front_app/domain/auth/data_presentation/data_presentation.dart';
import 'package:streaming_front_app/domain/auth/mappers/mappers.dart';
import 'package:streaming_front_app/domain/auth/repositories/repositories.dart';
import 'package:streaming_front_app/domain/user_related/entities/entities.dart';
import 'package:streaming_front_app/infrastructure/auth/repositories/repositories.dart';

import '../../../domain/auth/entities/entities.dart';
import '../../../domain/auth/enums/enums.dart';
import '../../../domain/auth/value_objects/value_objects.dart';

part 'auth.g.dart';

@Riverpod(keepAlive: true)
class Auth extends _$Auth {
  @override
  AuthUserState build() {
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

  void loginGuest({
    required JwtToken jwtToken,
  }) {
    state.loginGuest(jwtToken: jwtToken);
  }

  void logout() {
    state.logout();
    // getIt instance
    GetIt getIt = GetIt.I;
    // get the repository
    final IAuthRepository authRepo = getIt<AuthRepositoryImpl>();
    // clear the info
    authRepo.clearLoggingInfo();
    // update router and go to landing page
    ref.read(appRouterProvider.notifier).changeRouterBasedOnLogout();
    ref.read(appRouterProvider).goNamed('landing');
    // kill the player
    ref.read(musicPlayerProvider.notifier).dispose();
  }

  UserPresentation getUserInfoToShow() {
    return UserPresentationMapper.fromEntityToPresentation(
      state.user as User,
    );
  }

  void updateUser(User user) {
    state.updateUserInfo(
      name: user.getName(),
      email: user.getEmail(),
      birthdate: user.getBirthday(),
      gender: user.getGender(),
    );
  }
}
