import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import '../../../domain/auth/enums/enums.dart';
import '../../../domain/auth/repositories/repositories.dart';

@lazySingleton
class AuthRepositoryImpl extends IAuthRepository {
  @override
  Future<AuthState> login(String phone, String token) async {
    // getIt instance
    GetIt getIt = GetIt.I;
    // get dio variable from getIt to do the request
    Dio dio = getIt<Dio>();
    // make the request
    // TODO
    final response = await dio.post('/auth/login',
    data: );
    // transforming the request to DTO
    final  advertisementDto =
        .fromJson(response.data);
    // return entity element from DTO
    return .fromRemoteToEntity(advertisementDto);
  }
}
