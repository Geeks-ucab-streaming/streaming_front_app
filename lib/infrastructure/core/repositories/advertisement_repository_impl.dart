import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:logger/logger.dart';
import '../../../domain/core/entities/entities.dart';

import '../dtos/advertisement/advertisement_dto.dart';
import '../factories/advertisement_factory_impl.dart';
import '../factories/repository_error_factory_impl.dart';
import '../util/base_url.dart';

import '../../../domain/core/repositories/remote/i_advertisement_repository.dart';

class AdvertisementRepositoryImpl extends IAdvertisementRepository {
  // constructor
  AdvertisementRepositoryImpl(
    this.logger,
    this.advertisementFactory,
    this.repositoryErrorFactory,
  );

  // elements that get from constructor injection
  final Logger logger;
  final AdvertisementFactoryImpl advertisementFactory;
  final RepositoryErrorFactoryImpl repositoryErrorFactory;

  @override
  Future<Advertisement> getRandomAdvertisement() async {
    // dio variable to do the request
    final dio = Dio();

    // make the request
    final response = await dio.get('$baseUrl/promotion/random');
    logger.t(response.data.toString());
    // transforming the request to DTO
    final AdvertisementDto advertisementDto =
        AdvertisementDto.fromJson(response.data);
    logger.i(advertisementDto.toString());
    // return element created by the factory from de DTO
    return advertisementFactory.reconstituteAdvertisementFrom(advertisementDto);
  }
}
