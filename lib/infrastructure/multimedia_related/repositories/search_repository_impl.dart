import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/multimedia_related/entities/entities.dart';
import '../../../domain/multimedia_related/repositories/i_repositories.dart';
import '../../core/util/util.dart';
import '../dtos/dtos.dart';
import '../mappers/mappers.dart';

@lazySingleton
class SearchRepositoryImpl extends ISearchRepository {
  @override
  Future<SearchResult> getSearchQueryResults(String query) async {
    // getIt instance
    GetIt getIt = GetIt.I;
    // logger to output
    final logger = getIt<LoggerInstance>().getLogger();
    // get dio variable from getIt to do the request
    Dio dio = getIt<Dio>();
    try {
      // make the request api/search/info?limit=20&offset=1
      final response = await dio.get(
        '/api/search/info/$query',
        queryParameters: {
          'limit': 10,
          'offset': 1,
        },
      );
      // print info
      logger.i(response.data.toString());
      // transforming the request to DTO
      final SearchDto searchDto = SearchDto.fromJson(response.data["data"]);
      // print to log to verify
      logger.d('Search data: ${searchDto.toString()}');
      // return entity element from DTO
      return SearchMapper.searchResultFromRemoteToEntity(searchDto);
    } on DioException catch (errorResponse) {
      logger.e(errorResponse);
      throw DioException(requestOptions: RequestOptions());
    } catch (error) {
      // if we get to here something else happened
      logger.e(error);
      throw DioException(requestOptions: RequestOptions());
    }
  }
}
