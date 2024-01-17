import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:streaming_front_app/domain/user_related/errors/errors.dart';

import '../../../domain/auth/value_objects/value_objects.dart';
import '../../../domain/user_related/entities/entities.dart';
import '../../../domain/user_related/repositories/i_repositories.dart';
import '../../core/util/util.dart';
import '../dtos/dtos.dart';
import '../mappers/mappers.dart';

@lazySingleton
class UserRepositoryImpl extends IUserRepository {
  @override
  Future<Either<String, User>> updateUserInformation(
    String? name,
    String? email,
    DateTime? birthdate,
    String? gender,
  ) async {
    // getIt instance
    GetIt getIt = GetIt.I;
    // get dio variable from getIt to do the request
    Dio dio = getIt<Dio>();
    // get the logger instance
    final logger = getIt<LoggerInstance>().getLogger();

    Map<String, dynamic> dataToSend = {};

    if (name != null && name != '') {
      dataToSend['name'] = name;
    }
    if (email != null && email != '') {
      dataToSend['email'] = email;
    }
    if (birthdate != null) {
      dataToSend['birth_date'] = DateFormatter.formatDate(birthdate).toString();
    }
    if (gender != null && gender != '') {
      dataToSend['gender'] = gender;
    }

    try {
      logger.d(dataToSend);
      // make the request
      final response = await dio.patch(
        '/user',
        data: dataToSend,
      );

      // transforming the request to DTO
      final updateUserDto = UpdateUserInfoDto.fromJson(response.data["data"]);
      //logger.d(userDto.toString());
      // return entity element from DTO
      return Right(
        UpdateUserInfoMapper.fromRemoteToEntity(updateUserDto),
      );
    } on DioException catch (e) {
      logger.e(e);

      return const Left(
        "Error no se pudo hacer el cambio",
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
    final logger = getIt<LoggerInstance>().getLogger();
    // TODO TRY AND CATCH
    //try {
    // make the request
    final response = await dio.get(
      '/user',
      options: Options(
        headers: {"Authorization": "Bearer ${token.value}"},
      ),
    );
    logger.d('Response from back: ${response.toString()}');
    // transforming the request to DTO
    final userDto = UserDto.fromJson(response.data["data"]);
    logger.d('User dto: ${userDto.toString()}');
    // return entity element from DTO
    return UserMapper.fromRemoteToEntity(userDto);
    //} catch (e) {
  }

  @override
  Future<Either<BaseUserError, String>> terminateSubscription() async {
    // getIt instance
    GetIt getIt = GetIt.I;
    // get dio variable from getIt to do the request
    Dio dio = getIt<Dio>();
    // get the logger instance
    final logger = getIt<LoggerInstance>().getLogger();
    try {
      // make the request
      final response = await dio.post(
        '/subscription/cancel',
      );
      logger.d('Log-in-in response data: ${response.data}');
      // transforming the request to message
      final message = response.data["data"];
      // return the domain element
      return Right(message as String);
    } on DioException catch (error) {
      logger.e('Error deleting subscription: $error');
      final errorResponse = error.response?.data;
      if (errorResponse['statusCode'] == 500) {
        return Left(
          ServerError(message: "Server error"),
        );
      } else if (errorResponse['statusCode'] == 401) {
        return Left(
          Unauthorized(message: "Unauthorized"),
        );
      } else if (errorResponse['statusCode'] == 404) {
        return Left(
          CouldNotFind(message: "Error 404"),
        );
      }
    }
    // if we got here some error ocurred before and did not get catch
    return Left(
      ServerError(message: "Server error"),
    );
  }
}
