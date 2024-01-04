import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import '../dtos/dtos.dart';
import '../mappers/mappers.dart';
import '../../core/util/util.dart';
import '../../../domain/auth/entities/entities.dart';
import '../../../domain/auth/repositories/repositories.dart';

@lazySingleton
class AuthRepositoryImpl extends IAuthRepository {
  @override
  Future<JwtToken> login(String phone) async {
    // getIt instance
    GetIt getIt = GetIt.I;
    // get dio variable from getIt to do the request
    Dio dio = getIt<Dio>();
    // get the logger instance
    final logger = getIt<LoggerInstance>().getLogger();
    // make the request
    final response = await dio.post(
      '/auth/login',
      data: {
        'phone': phone,
      },
    );
    logger.d(response.data);
    // transforming the request to DTO
    final jwtTokenDto = JwtTokenDto.fromJson(response.data);
    logger.d(jwtTokenDto.toString());
    // return entity element from DTO
    return JwtTokenMapper.loginJwtFromRemoteToEntity(jwtTokenDto);
  }

  @override
  Future<User> getUserByToken(JwtToken token) async {
    // getIt instance
    GetIt getIt = GetIt.I;
    // get dio variable from getIt to do the request
    Dio dio = getIt<Dio>();
    // get the logger instance
    final logger = getIt<LoggerInstance>().getLogger();
    // make the request
    final response = await dio.get(
      '/auth/login',
      options: Options(
        headers: {"Authorization": "Bearer ${token.value}"},
      ),
    );
    logger.d(response.toString());
    // transforming the request to DTO
    final userDto = UserDto.fromJson(response.data);
    logger.d(userDto.toString());
    // return entity element from DTO
    return UserMapper.fromRemoteToEntity(token, userDto);
  }
}
