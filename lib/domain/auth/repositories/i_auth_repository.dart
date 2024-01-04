import '../entities/entities.dart';

abstract class IAuthRepository {
  Future<JwtToken> login(String phone);
  Future<User> getUserByToken(JwtToken token);
}
