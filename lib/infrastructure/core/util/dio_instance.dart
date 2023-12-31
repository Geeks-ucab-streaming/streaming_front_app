import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@module
abstract class DioInstance {
  @Named("BaseUrl")
  String get baseUrl =>
      'http://streaming-api.eastus.azurecontainer.io:3000/api';

  // url here will be injected
  @lazySingleton
  Dio dio(@Named('BaseUrl') String url) => Dio(
        BaseOptions(
          baseUrl: url,
        ),
      );
}
