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
  Future<Album> getAlbumById(String albumId) async {
    // getIt instance
    GetIt getIt = GetIt.I;
    // logger to output
    final logger = getIt<LoggerInstance>().getLogger();
    // get dio variable from getIt to do the request
    Dio dio = getIt<Dio>();
    // make the request
    final response = await dio.get('/album/$albumId');
    logger.i(response.data.toString());
    // transforming the request to DTO
    final AlbumDto albumDto = AlbumDto.fromJson(response.data["data"]);
    logger.i(albumDto.toString());
    // return entity element from DTO
    return AlbumMapper.albumByIdFromRemoteToEntity(albumDto);
  }

  // get top albums
  @override
  Future<List<Album>> getTopAlbums() async {
    // getIt instance
    GetIt getIt = GetIt.I;
    // logger to output
    // get dio variable from getIt to do the request
    Dio dio = getIt<Dio>();
    // make the request
    final response = await dio.get('/album/top_albums');
    // transforming the request to DTO
    final TopAlbumsDto topAlbumsDto =
        TopAlbumsDto.fromJson(response.data["data"]);
    // return entity element from DTO
    return AlbumMapper.topAlbumsFromRemoteToEntity(topAlbumsDto);
  }
}
