import '../../entities/entities.dart';

abstract class IAlbumRepository {
  // get playlist by id
  Future<Album> getAlbumById(String playlistId);
  // get top albums
  Future<List<Album>> getTopAlbums();
}
