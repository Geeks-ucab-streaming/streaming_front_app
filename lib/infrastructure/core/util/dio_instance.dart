import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@module
abstract class DioInstance {
  @Named("BaseUrl")
  String get baseUrl =>
      'https://streaming-api-production-48db.up.railway.app/api';

  // url here will be injected
  @lazySingleton
  Dio dio(@Named('BaseUrl') String url) => Dio(
        BaseOptions(
          baseUrl: url,
        ),
      );
}
