import '../../../domain/auth/entities/entities.dart';
import '../dtos/dtos.dart';

class JwtTokenMapper {
  static JwtToken loginJwtFromRemoteToEntity(JwtTokenDto jwtTokenDto) {
    return JwtToken(jwtTokenDto.token);
  }
}
