import 'package:dartz/dartz.dart';
import 'package:get_it/get_it.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:streaming_front_app/domain/enums/enums.dart';

import '../../../../domain/user_related/entities/entities.dart';
import '../../../../domain/user_related/repositories/i_repositories.dart';
//import '../../../../infrastructure/core/util/util.dart';
import '../../../../infrastructure/user_related/repositories/repositories.dart';
import '../../../auth/states/states.dart';

part 'modify_user_info.g.dart';

@Riverpod(keepAlive: true)
class ModifyUserInfo extends _$ModifyUserInfo {
  @override
  UserModifyEnum build() {
    return UserModifyEnum.unChange;
  }

  Future<void> modifyUserInfo({
    String? name,
    String? email,
    DateTime? birthdate,
    String? gender,
  }) async {
    // getIt instance
    GetIt getIt = GetIt.I;
    // get the repositories
    final IUserRepository userRepo = getIt<UserRepositoryImpl>();
    // get the logger instance
    //final logger = getIt<LoggerInstance>().getLogger();
    // try to sign in the cellphone number
    final Either<String, User> modifyUserResponse =
        await userRepo.updateUserInformation(
      name,
      email,
      birthdate,
      gender,
    );
    // fold the response to see the response
    await modifyUserResponse.fold(
      (error) async {
        state = UserModifyEnum.error;
      },
      (user) async {
        // the user could be modify so update the local state
        final authState = ref.watch(authProvider.notifier);
        authState.updateUser(user);
        // update own state
        state = UserModifyEnum.pass;
      },
    );
  }

  void resetState() {
    state = UserModifyEnum.unChange;
  }
}
