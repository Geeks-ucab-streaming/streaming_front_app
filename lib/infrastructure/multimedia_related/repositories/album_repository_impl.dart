import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/multimedia_related/entities/entities.dart';
import '../../../domain/multimedia_related/repositories/i_repositories.dart';
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
  Future<List<Album>> getTopAlbums() async {
    // getIt instance
    GetIt getIt = GetIt.I;
    // logger to output
    // get dio variable from getIt to do the request
    Dio dio = getIt<Dio>();
    // make the request
    final response = await dio.get('/album/top_album');
    // transforming the request to DTO
    final TopAlbumsDto topAlbumsDto =
        TopAlbumsDto.fromJson(response.data["data"]);
    // return entity element from DTO
    return AlbumMapper.topAlbumsFromRemoteToEntity(topAlbumsDto);
  }
}
