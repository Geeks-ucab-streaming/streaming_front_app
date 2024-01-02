import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/multimedia_related/entities/entities.dart';
import '../../../domain/multimedia_related/repositories/i_repositories.dart';
import '../dtos/dtos.dart';
import '../mappers/mappers.dart';

@lazySingleton
class SongRepositoryImpl extends ISongRepository {
  // get song by id
  @override
  Future<Song> getTrackById(String trackId) async {
    return Song();
  }

  // get songs by artist
  @override
  Future<List<Song>> getSongsByArtistId(String artistId) async {
    return [];
  }

  // get songs by playlist
  @override
  Future<List<Song>> getSongsByPlaylistId(String playlistId) async {
    return [];
  }

  // get trending songs
  @override
  Future<List<Song>> getTrendingSongs() async {
    // getIt instance
    GetIt getIt = GetIt.I;
    // get dio variable from getIt to do the request
    Dio dio = getIt<Dio>();
    // make the request
    final response = await dio.get('/songs/trending');
    // transforming the request to DTO
    final TrendingSongsDto trendingSongsDto =
        TrendingSongsDto.fromJson(response.data);
    // return entity element from DTO
    return SongMapper.trendingSongsFromRemoteToEntity(trendingSongsDto);
  }
}
