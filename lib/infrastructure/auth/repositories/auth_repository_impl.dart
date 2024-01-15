import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:streaming_front_app/infrastructure/core/services/firebase_api.dart';
import 'package:streaming_front_app/infrastructure/core/util/util.dart';

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
    final logger = getIt<LoggerInstance>().getLogger();
    try {
      // get the firebase token
      String? firebaseToken = await getIt<FireBaseAPI>().getAppToken();
      // make the request
      final response = await dio.post(
        '/auth/log-in',
        data: {
          'phone': phone,
        },
        options: Options(
          headers: {"token": firebaseToken},
        ),
      );
      logger.d('Log-in-in response data: ${response.data}');
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
    } on DioException catch (error) {
      logger.e(error);
      final errorResponse = error.response?.data;
      if (errorResponse['statusCode'] == 500) {
        return Left(
          ServerError(message: "Server error"),
        );
      } else if (errorResponse['statusCode'] == 401) {
        return Left(
          ServerError(message: "Unauthorized"),
        );
      } else if (errorResponse['statusCode'] == 404) {
        return Left(
          ServerError(message: "Phone not registered"),
        );
      }
    }
    // if we got here some error ocurred before and did not get catch
    return Left(
      ServerError(message: "Server error"),
    );
  }

  @override
  Future<Either<BaseAuthError, JwtToken>> guestLogin() async {
    // getIt instance
    GetIt getIt = GetIt.I;
    // get dio variable from getIt to do the request
    Dio dio = getIt<Dio>();
    // get the logger instance
    final logger = getIt<LoggerInstance>().getLogger();
    try {
      // get the firebase token
      String? firebaseToken = await getIt<FireBaseAPI>().getAppToken();
      // make the request
      final response = await dio.post(
        '/auth/log-in/guest',
        options: Options(
          headers: {"token": firebaseToken},
        ),
      );
      logger.d('Guest-log-in response data: ${response.data}');
      // transforming the request to DTO
      final jwtTokenDto = JwtTokenDto.fromJson(response.data["data"]);
      // get the token
      JwtToken jwtToken =
          JwtTokenMapper.loginJwtFromRemoteToEntity(jwtTokenDto);
      // update the jwt token in the Dio instance
      _addDioAuthorizationInterceptor(
        dioInstance: dio,
        jwtToken: jwtToken,
      );
      // return the domain element
      return Right(jwtToken);
    } on DioException catch (error) {
      logger.e(error);
      final errorResponse = error.response?.data;
      if (errorResponse['statusCode'] == 500) {
        return Left(
          ServerError(message: "Server error"),
        );
      } else if (errorResponse['statusCode'] == 401) {
        return Left(
          ServerError(message: "Unauthorized"),
        );
      } else if (errorResponse['statusCode'] == 404) {
        return Left(
          ServerError(message: "Phone not registered"),
        );
      }
    }
    // if we got here some error ocurred before and did not get catch
    return Left(
      ServerError(message: "Server error"),
    );
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
    final logger = getIt<LoggerInstance>().getLogger();
    // make the request
    try {
      // get the firebase token
      String? firebaseToken = await getIt<FireBaseAPI>().getAppToken();
      // make the request
      final response = await dio.post(
        apiEndpoint,
        data: {
          'phone': phone,
        },
        options: Options(
          headers: {"token": firebaseToken},
        ),
      );
      logger.d('Sign-in response data: ${response.data}');
      // transforming the request to DTO
      final jwtTokenDto = JwtTokenDto.fromJson(response.data["data"]);
      // get the token
      JwtToken jwtToken =
          JwtTokenMapper.loginJwtFromRemoteToEntity(jwtTokenDto);
      // update the jwt token in the Dio instance
      _addDioAuthorizationInterceptor(
        dioInstance: dio,
        jwtToken: jwtToken,
      );
      // return the domain element
      return Right(jwtToken);
    } on DioException catch (error) {
      logger.e(error);
      final errorResponse = error.response?.data;
      if (errorResponse['statusCode'] == 500) {
        return Left(
          ServerError(message: "Server error"),
        );
      } else if (errorResponse['statusCode'] == 400) {
        return Left(
          ServerError(message: "Phone is not valid for register"),
        );
      } else if (errorResponse['statusCode'] == 401) {
        return Left(
          ServerError(message: "Unauthorized"),
        );
      } else if (errorResponse['statusCode'] == 404) {
        return Left(
          ServerError(message: "Phone already exist"),
        );
      }
    }
    // if we got here some error ocurred before and did not get catch
    return Left(
      ServerError(message: "Server error"),
    );
  }

  void _addDioAuthorizationInterceptor({
    required Dio dioInstance,
    required JwtToken jwtToken,
  }) {
    dioInstance.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) {
          // Add the access token to the request header
          options.headers['Authorization'] = 'Bearer ${jwtToken.value}';
          return handler.next(options);
        },
      ),
    );
  }
}
