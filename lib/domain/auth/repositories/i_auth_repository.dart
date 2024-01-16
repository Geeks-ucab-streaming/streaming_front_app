import 'package:dartz/dartz.dart';

import '../enums/enums.dart';
import '../errors/errors.dart';
import '../value_objects/value_objects.dart';

abstract class IAuthRepository {
  Future<Either<BaseAuthError, JwtToken>> login(String phone);
  Future<Either<BaseAuthError, JwtToken>> guestLogin();
  Future<Either<BaseAuthError, JwtToken>> loginFromLocalSession();
  Future<Either<BaseAuthError, JwtToken>> signIn(
    String phone,
    AvailableOperators cellphoneOperator,
  );
  Future<void> clearLoggingInfo();
}
