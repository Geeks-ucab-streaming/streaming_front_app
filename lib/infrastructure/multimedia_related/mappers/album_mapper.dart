import '../../../domain/multimedia_related/entities/entities.dart';
import '../../core/util/util.dart';
import '../dtos/dtos.dart';

class AlbumMapper {
  static List<Album> topAlbumsFromRemoteToEntity(TopAlbumsDto topAlbumsDto) {
    List<Album> topAlbums = topAlbumsDto.playlists
        .map((element) => Album(
              id: AlbumId(element.id),
              image: AlbumImage(
                  ImageConverter.fromDynamicListToIntList(element.image)),
            ))
        .toList();
    return topAlbums;
  }
}
