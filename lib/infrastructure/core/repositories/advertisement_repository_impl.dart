import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/core/entities/entities.dart';
import '../../../domain/core/repositories/i_repositories.dart';
import '../dtos/dtos.dart';
import '../mappers/mappers.dart';
import '../util/util.dart';

@lazySingleton
class AdvertisementRepositoryImpl extends IAdvertisementRepository {
  // constructor
  AdvertisementRepositoryImpl();

  @override
  Future<Advertisement> getRandomAdvertisement() async {
    // getIt instance
    GetIt getIt = GetIt.I;
    // logger to output
    final logger = getIt<LoggerInstance>().getLogger();
    // dio variable to do the request
    final dio = Dio();
    // make the request
    final response = await dio.get('$baseUrl/promotion/random');
    logger.t(response.data.toString());
    // transforming the request to DTO
    final AdvertisementDto advertisementDto =
        AdvertisementDto.fromJson(response.data);
    logger.i(advertisementDto.toString());
    // return entity element from DTO
    return AdvertisementMapper.fromRemoteToEntity(advertisementDto);
  }
}
