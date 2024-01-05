import '../../../domain/auth/value_objects/value_objects.dart';
import '../dtos/dtos.dart';

class JwtTokenMapper {
  static JwtToken loginJwtFromRemoteToEntity(JwtTokenDto jwtTokenDto) {
    return JwtToken(jwtTokenDto.token);
  }
}
