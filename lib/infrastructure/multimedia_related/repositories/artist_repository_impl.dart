import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/multimedia_related/entities/entities.dart';
import '../../../domain/multimedia_related/repositories/i_repositories.dart';
import '../../core/util/util.dart';
import '../dtos/dtos.dart';
import '../mappers/mappers.dart';

@lazySingleton
class ArtistRepositoryImpl extends IArtistRepository {
  // get artist by id
  @override
  Future<Artist> getArtistAllInfoById(String artistId) async {
    // getIt instance
    GetIt getIt = GetIt.I;
    // logger to output
    final logger = getIt<LoggerInstance>().getLogger();
    // get dio variable from getIt to do the request
    Dio dio = getIt<Dio>();
    // make the request
    final response = await dio.get('/artists/$artistId');
    logger.i(response.data.toString());
    // transforming the request to DTO
    final ArtistDto artistDto = ArtistDto.fromJson(response.data);
    logger.i(artistDto);
    // return entity element from DTO
    return ArtistMapper.artistCompleteInfoFromRemoteToEntity(artistDto);
  }

  // get top artists
  @override
  Future<List<Artist>> getTrendingArtists() async {
    // getIt instance
    GetIt getIt = GetIt.I;
    // get dio variable from getIt to do the request
    Dio dio = getIt<Dio>();
    // make the request
    final response = await dio.get('/artists/top_artists');
    // transforming the request to DTO
    final TrendingArtistsDto trendingArtistsDto =
        TrendingArtistsDto.fromJson(response.data);
    // return entity element from DTO
    return ArtistMapper.trendingArtistsFromRemoteToEntity(trendingArtistsDto);
  }
}
