import 'package:get_it/get_it.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../domain/multimedia_related/data_presentation/data_presentation.dart';
import '../../../../domain/multimedia_related/entities/entities.dart';
import '../../../../domain/multimedia_related/mappers/mappers.dart';
import '../../../../domain/multimedia_related/repositories/i_repositories.dart';
import '../../../../infrastructure/multimedia_related/repositories/repositories.dart';

part 'get_search_info.g.dart';

@riverpod
Future<SearchPresentation> getSearchInfo(
  GetSearchInfoRef ref,
  String query,
) async {
  // getIt instance
  GetIt getIt = GetIt.I;
  // get the repository
  final ISearchRepository searchRepo = getIt<SearchRepositoryImpl>();
  // get the information from the repositories
  final SearchResult searchInfo = await searchRepo.getSearchQueryResults(query);
  // map to presentation and return
  return SearchPresentationMapper.searchFromEntityToPresentation(searchInfo);
}
