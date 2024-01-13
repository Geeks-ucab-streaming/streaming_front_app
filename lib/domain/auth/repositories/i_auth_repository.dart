import 'package:dartz/dartz.dart';
import '../enums/enums.dart';
import '../errors/errors.dart';
import '../value_objects/value_objects.dart';

import '../entities/entities.dart';

abstract class IAuthRepository {
  Future<Either<BaseAuthError, JwtToken>> login(String phone);
  Future<Either<BaseAuthError, JwtToken>> signIn(
    String phone,
    AvailableOperators cellphoneOperator,
  );
  Future<User> getUserByToken(JwtToken token);
}
