import 'package:dartz/dartz.dart';

import '../../../auth/value_objects/value_objects.dart';
import '../../entities/entities.dart';

abstract class IUserRepository {
  Future<Either<String, User>> updateUserInformation(
    String? name,
    String? email,
    DateTime? birthdate,
    String? gender,
  );
  Future<User> getUserByToken(JwtToken token);
}
