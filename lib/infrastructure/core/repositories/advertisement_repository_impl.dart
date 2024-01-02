import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/core/entities/entities.dart';
import '../../../domain/core/repositories/i_repositories.dart';
import '../dtos/dtos.dart';
import '../mappers/mappers.dart';

@lazySingleton
class AdvertisementRepositoryImpl extends IAdvertisementRepository {
  @override
  Future<Advertisement> getRandomAdvertisement() async {
    // getIt instance
    GetIt getIt = GetIt.I;
    // get dio variable from getIt to do the request
    Dio dio = getIt<Dio>();
    // make the request
    final response = await dio.get('/promotion');
    // transforming the request to DTO
    final AdvertisementDto advertisementDto =
        AdvertisementDto.fromJson(response.data);
    // return entity element from DTO
    return AdvertisementMapper.fromRemoteToEntity(advertisementDto);
  }
}
