import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@module
abstract class DioInstance {
  @Named("BaseUrl")
  String get baseUrl => 'http://10.0.2.2:3000/api';

  // url here will be injected
  @lazySingleton
  Dio dio(@Named('BaseUrl') String url) => Dio(
        BaseOptions(
          baseUrl: url,
        ),
      );
}
