import '../../entities/entities.dart';

abstract class IAlbumRepository {
  // get album by id
  Future<Album> getAlbumById(String albumId);
  // get top albums
  Future<List<Album>> getTopAlbums();
}
