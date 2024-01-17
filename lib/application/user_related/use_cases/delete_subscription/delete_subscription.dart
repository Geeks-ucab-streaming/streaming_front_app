import 'package:dartz/dartz.dart';
import 'package:get_it/get_it.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:streaming_front_app/infrastructure/core/util/util.dart';

import '../../../../domain/enums/enums.dart';
import '../../../../domain/user_related/errors/errors.dart';
import '../../../../domain/user_related/repositories/i_repositories.dart';
import '../../../../infrastructure/user_related/repositories/repositories.dart';

part 'delete_subscription.g.dart';

@Riverpod(keepAlive: true)
class DeleteSubscription extends _$DeleteSubscription {
  @override
  UserDeleteSubscriptionEnum build() {
    return UserDeleteSubscriptionEnum.unChange;
  }

  Future<void> deleteSubscription({
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
    final logger = getIt<LoggerInstance>().getLogger();
    // try to sign in the cellphone number
    final Either<BaseUserError, String> response =
        await userRepo.terminateSubscription();
    // print the result form the repository
    logger.d('Result from repository delete subscription: $response');
    // fold the response to see the response
    await response.fold(
      (error) async {
        logger.d('Error: $error');
        state = UserDeleteSubscriptionEnum.error;
      },
      (user) async {
        // the user could delete his subscription
        logger.d('User deleted his subscription');
        // update own state
        state = UserDeleteSubscriptionEnum.pass;
      },
    );
  }

  void resetState() {
    state = UserDeleteSubscriptionEnum.unChange;
  }
}
