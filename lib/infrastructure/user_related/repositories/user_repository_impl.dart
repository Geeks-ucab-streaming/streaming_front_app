import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/auth/value_objects/value_objects.dart';
import '../../../domain/user_related/entities/entities.dart';
import '../../../domain/user_related/repositories/i_repositories.dart';
import '../../core/util/util.dart';
import '../dtos/dtos.dart';
import '../mappers/mappers.dart';

@lazySingleton
class UserRepositoryImpl extends IUserRepository {
  @override
  Future<User> updateUserInformation(User user) async {
    return User();
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
      '/user',
      options: Options(
        headers: {"Authorization": "Bearer ${token.value}"},
      ),
    );
    logger.d(response.toString());
    // transforming the request to DTO
    final userDto = UserDto.fromJson(response.data["data"]);
    //logger.d(userDto.toString());
    // return entity element from DTO
    return UserMapper.fromRemoteToEntity(userDto);
  }
}
