import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/multimedia_related/repositories/i_repositories.dart';
import '../../core/util/util.dart';
import '../../../domain/multimedia_related/entities/entities.dart';

import '../../../domain/core/entities/entities.dart';
import '../../../domain/core/repositories/i_repositories.dart';
import '../dtos/dtos.dart';
import '../mappers/mappers.dart';
import '../util/util.dart';

@lazySingleton
abstract class PlaylistRepositoryImpl extends IPlaylistRepository {
  // get playlist by id
  @override
  Future<Playlist> getPlaylistById(String playlistId) async {}

  // get the playlists created by creator id
  @override
  Future<List<Playlist>> getPlaylistCreatedBy(String creatorId) async {}

  // get top fourth playlists
  @override
  Future<List<Playlist>> getTopFourthPlaylist(String creatorId) async {
    // getIt instance
    GetIt getIt = GetIt.I;
    // logger to output
    final logger = getIt<LoggerInstance>().getLogger();
    // get dio variable from getIt to do the request
    Dio dio = getIt<Dio>();
    // make the request
    final response = await dio.get('/playlist/top_playlist');
    logger.i(response.data.toString());
    // transforming the request to DTO
    final TopPlaylistsDto topPlaylistDto =
        TopPlaylistsDto.fromJson(response.data);
    logger.i(topPlaylistDto.toString());
    // return entity element from DTO
    return PlaylistMapper.topPlaylistFromRemoteToEntity(topPlaylistDto);
  }
}
