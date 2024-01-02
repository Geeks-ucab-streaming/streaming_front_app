import '../enums/enums.dart';

abstract class IAuthRepository {
  Future<AuthState> login(String phone, String token);
}
