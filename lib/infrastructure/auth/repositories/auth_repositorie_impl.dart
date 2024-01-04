import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:streaming_front_app/infrastructure/auth/dtos/dtos.dart';
import 'package:streaming_front_app/infrastructure/auth/mappers/mappers.dart';
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
    // make the request
    final response = await dio.post('/auth/login',
    data: {'phone': phone,},);
    // transforming the request to DTO
    final  jwtTokenDto =
        JwtTokenDto.fromJson(response.data);
    // return entity element from DTO
    return JwtTokenMapper.loginJwtFromRemoteToEntity(jwtTokenDto);
  }

  @override
  Future<User> getUserByToken(JwtToken token)  async {
    // getIt instance
    GetIt getIt = GetIt.I;
    // get dio variable from getIt to do the request
    Dio dio = getIt<Dio>();
    // make the request
    final response = await dio.get('/auth/login', options: Options(headers:{"Authorization":"Bearer ${token.value}"},),);
    // transforming the request to DTO
    final  advertisementDto =
        .fromJson(response.data);
    // return entity element from DTO
    return .fromRemoteToEntity(advertisementDto);
  }
}
