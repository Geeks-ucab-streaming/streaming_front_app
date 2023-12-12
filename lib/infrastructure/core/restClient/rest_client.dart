import 'package:dio/dio.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:retrofit/retrofit.dart';
import 'package:streaming_front_app/infrastructure/core/dtos/advertisement/advertisement_dto.dart';

part 'rest_client.g.dart';

@RestApi(baseUrl: 'https://5d42a6e2bc64f90014a56ca0.mockapi.io/api/v1/api/')
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;

  @GET('/promotion/random')
  Future<AdvertisementDto> getRandomPromotion();
}
