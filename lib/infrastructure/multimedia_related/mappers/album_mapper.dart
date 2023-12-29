import '../../../domain/multimedia_related/entities/entities.dart';
import '../dtos/dtos.dart';

class AlbumMapper {
  static List<Album> topAlbumsFromRemoteToEntity(TopAlbumsDto topAlbumsDto) {
    List<Album> topAlbums = topAlbumsDto.playlists
        .map(
          (element) => Album(
            id: AlbumId(element.id),
            image: AlbumImage(
              element.image.getImageAsIntList(),
            ),
          ),
        )
        .toList();
    return topAlbums;
  }
}
