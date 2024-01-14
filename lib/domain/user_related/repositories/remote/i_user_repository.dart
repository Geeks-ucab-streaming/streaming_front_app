import '../../../auth/value_objects/value_objects.dart';
import '../../entities/entities.dart';

abstract class IUserRepository {
  Future<User> updateUserInformation(User user);
  Future<User> getUserByToken(JwtToken token);
}
