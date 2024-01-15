import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/auth/enums/enums.dart';
import '../../../domain/auth/errors/errors.dart';
import '../../../domain/auth/repositories/repositories.dart';
import '../../../domain/auth/value_objects/value_objects.dart';
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
      '/auth/log-in',
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
      // get the token
      JwtToken jwtToken =
          JwtTokenMapper.loginJwtFromRemoteToEntity(jwtTokenDto);
      // update the token in the Dio instance
      dio.interceptors.add(
        InterceptorsWrapper(
          onRequest: (options, handler) {
            // Add the access token to the request header
            options.headers['Authorization'] = 'Bearer ${jwtToken.value}';
            return handler.next(options);
          },
        ),
      );
      // return the domain element
      return Right(jwtToken);
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
  Future<Either<BaseAuthError, JwtToken>> signIn(
    String phone,
    AvailableOperators cellphoneOperator,
  ) async {
    // get the api endpoint to call
    String apiEndpoint = switch (cellphoneOperator) {
      AvailableOperators.digitel => '/auth/sign-up/digitel',
      AvailableOperators.movistar => '/auth/sign-up/movistar',
    };

    // getIt instance
    GetIt getIt = GetIt.I;
    // get dio variable from getIt to do the request
    Dio dio = getIt<Dio>();
    // get the logger instance
    //final logger = getIt<LoggerInstance>().getLogger();
    // make the request
    try {
      final response = await dio.post(
        apiEndpoint,
        data: {
          'phone': phone,
        },
      );
      //logger.d(response.data);

      // verify if the user is logged in based on response
      final int statusCode = response.data["statusCode"];
      if (statusCode == 200 || statusCode == 201) {
        // transforming the request to DTO
        final jwtTokenDto = JwtTokenDto.fromJson(response.data["data"]);
        // get the token
        JwtToken jwtToken =
            JwtTokenMapper.loginJwtFromRemoteToEntity(jwtTokenDto);
        // update the token in the Dio instance
        dio.interceptors.add(
          InterceptorsWrapper(
            onRequest: (options, handler) {
              // Add the access token to the request header
              options.headers['Authorization'] = 'Bearer ${jwtToken.value}';
              return handler.next(options);
            },
          ),
        );
        // return the domain element
        return Right(jwtToken);
      } else if (statusCode == 400) {
        // return the domain error
        return Left(
          PhoneNotValidForSignIn(message: "Phone is not valid for register"),
        );
      } else if (statusCode == 404) {
        // return the domain error
        return Left(
          PhoneAlreadyExist(message: "Phone already exist"),
        );
      } else {
        // return the domain error
        return Left(
          ServerError(message: "Server error"),
        );
      }
    } on DioException {
      return Left(
        ServerError(message: "Try se ejecuto y aqui estamos"),
      );
    }
  }
}
