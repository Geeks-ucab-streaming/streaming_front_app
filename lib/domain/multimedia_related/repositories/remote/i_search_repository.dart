import '../../entities/entities.dart';

abstract class ISearchRepository {
  // get album by id
  Future<Album> getSearchQueryResults(String query);
}
