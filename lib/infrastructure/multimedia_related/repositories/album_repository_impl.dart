import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/multimedia_related/entities/entities.dart';
import '../../../domain/multimedia_related/repositories/i_repositories.dart';
import '../../core/util/util.dart';
import '../dtos/dtos.dart';
import '../mappers/mappers.dart';

@lazySingleton
class AlbumRepositoryImpl extends IAlbumRepository {
  // get playlist by
  @override
  Future<Album> getAlbumById(String playlistId) async {
    return Album();
  }

  // get top albums
  @override
  Future<List<Album>> getTopAlbums(String creatorId) async {
    // getIt instance
    GetIt getIt = GetIt.I;
    // logger to output
    final logger = getIt<LoggerInstance>().getLogger();
    // get dio variable from getIt to do the request
    Dio dio = getIt<Dio>();
    // make the request
    final response = await dio.get('/playlist/top_playlist?tipo=album');
    logger.i(response.data.toString());
    // transforming the request to DTO
    final TopAlbumsDto topAlbumsDto = TopAlbumsDto.fromJson(response.data);
    logger.i(topAlbumsDto.toString());
    // return entity element from DTO
    return AlbumMapper.topAlbumsFromRemoteToEntity(topAlbumsDto);
  }
}
