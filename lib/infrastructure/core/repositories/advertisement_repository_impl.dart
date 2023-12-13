import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:logger/logger.dart';

import 'package:streaming_front_app/domain/core/repository_error.dart';
import 'package:streaming_front_app/infrastructure/core/dtos/advertisement/advertisement_dto.dart';
import 'package:streaming_front_app/infrastructure/core/factories/advertisement_factory_impl.dart';
import 'package:streaming_front_app/infrastructure/core/factories/repository_error_factory_impl.dart';
import 'package:streaming_front_app/infrastructure/core/util/base_url.dart';

import '../../../domain/core/repositories/remote/i_advertisement_repository.dart';
import '../../../domain/core/advetisement.dart';

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
  Future<Either<RepositoryError, Advertisement>>
      getRandomAdvertisement() async {
    // dio variable to do the request
    final dio = Dio();
    try {
      // make the request
      final response = await dio.get('$baseUrl/promotion/random');
      logger.i('Hi this is the element:');
      logger.i(response.data.toString());
      // transforming the request to DTO
      final AdvertisementDto advertisementDto =
          AdvertisementDto.fromJson(response.data);
      logger.i(advertisementDto.toString());
      // return element created by the factory from de DTO
      return Right(
        advertisementFactory.reconstituteAdvertisementFrom(advertisementDto),
      );
    } on DioException catch (error) {
      // the request was made and the server responded with a status code
      // that falls out of the range of 2xx and is also not 304.
      if (error.response != null) {
        logger.i('Oh no an error ocurred');
        logger.e(error.response.toString());
        return Left(
          repositoryErrorFactory.createRepositoryError(
              'Error on advertisement repository that falls out of the range of 2xx and is also not 304'),
        );
      } else {
        // something happened in setting up or sending the request that triggered an Error
        logger.i('Oh no an error ocurred');
        logger.e(error.message.toString());
        return Left(
          repositoryErrorFactory.createRepositoryError(
              'Error on advertisement repository that falls out of the range of 2xx and is also not 304'),
        );
      }
    }
  }
}
