import 'package:injectable/injectable.dart';

@lazySingleton
class EndpointsGetter {
  Map<String, String> endpoints = {
    // login/sign-in  endpoints
    'sign-in-digitel': '/auth/sign-up/digitel',
    'sign-in-movistar': '/auth/sign-up/movistar',
    'log-in': '/auth/log-in',
    // user endpoints
    'get-user-by-token': '/user',
  };

  String getLogger({required String endpointKey}) {
    return endpoints[endpointKey] as String;
  }
}
