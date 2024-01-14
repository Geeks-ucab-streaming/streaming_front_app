import '../../entities/entities.dart';

abstract class ISearchRepository {
  // get album by id
  Future<SearchResult> getSearchQueryResults(String query);
}
