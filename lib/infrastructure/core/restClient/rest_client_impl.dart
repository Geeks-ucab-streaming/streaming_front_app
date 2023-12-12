import 'package:dio/dio.dart';
import 'package:logger/logger.dart';

import 'rest_client.dart';

class RestClientImpl {
  RestClientImpl() {
    // initialize the logger
    logger = Logger();
    // Provide a dio instance
    final dio = Dio();
    // config your dio headers globally
    //dio.options.headers['Demo-Header'] = 'demo header';
    // initialize the client
    client = RestClient(dio);
  }

  late RestClient client;
  late Logger logger;

  Logger getLogger() {
    return logger;
  }

  RestClient getClient() {
    return client;
  }
}
