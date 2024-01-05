import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:dartz/dartz.dart';
import 'package:streaming_front_app/domain/auth/errors/errors.dart';

import '../../../domain/auth/entities/entities.dart';
import '../../../domain/auth/repositories/repositories.dart';
import '../../../domain/auth/value_objects/value_objects.dart';
import '../../core/util/util.dart';
import '../dtos/dtos.dart';
import '../mappers/mappers.dart';

@lazySingleton
class AuthRepositoryImpl extends IAuthRepository {
  @override
  Future<Either<BaseAuthError, JwtToken>> login(String phone) async {
    // getIt instance
    GetIt getIt = GetIt.I;
    // get dio variable from getIt to do the request
    Dio dio = getIt<Dio>();
    // get the logger instance
    //final logger = getIt<LoggerInstance>().getLogger();
    // make the request
    final response = await dio.post(
      '/auth/login',
      data: {
        'phone': phone,
      },
    );
    //logger.d(response.data);

    // verify if the user is logged in based on response
    final int statusCode = response.data["statusCode"];
    if (statusCode == 200) {
      // transforming the request to DTO
      final jwtTokenDto = JwtTokenDto.fromJson(response.data["data"]);
      //logger.d(jwtTokenDto.toString());
      // return the domain element
      return Right(
        JwtTokenMapper.loginJwtFromRemoteToEntity(jwtTokenDto),
      );
    } else if (statusCode == 404) {
      // return the domain error
      return Left(
        PhoneNotRegistered(message: "Phone is not registered"),
      );
    } else {
      // return the domain error
      return Left(
        ServerError(message: "Server error"),
      );
    }
  }

  @override
  Future<User> getUserByToken(JwtToken token) async {
    // getIt instance
    GetIt getIt = GetIt.I;
    // get dio variable from getIt to do the request
    Dio dio = getIt<Dio>();
    // get the logger instance
    //final logger = getIt<LoggerInstance>().getLogger();
    // make the request
    final response = await dio.get(
      '/user',
      options: Options(
        headers: {"Authorization": "Bearer ${token.value}"},
      ),
    );
    //logger.d(response.toString());
    // transforming the request to DTO
    final userDto = UserDto.fromJson(response.data);
    //logger.d(userDto.toString());
    // return entity element from DTO
    return UserMapper.fromRemoteToEntity(userDto);
  }
}
