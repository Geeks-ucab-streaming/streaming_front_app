import 'package:dartz/dartz.dart';
import 'package:streaming_front_app/domain/auth/errors/errors.dart';
import 'package:streaming_front_app/domain/auth/value_objects/value_objects.dart';

import '../entities/entities.dart';

abstract class IAuthRepository {
  Future<Either<BaseAuthError, JwtToken>> login(String phone);
  Future<User> getUserByToken(JwtToken token);
}
