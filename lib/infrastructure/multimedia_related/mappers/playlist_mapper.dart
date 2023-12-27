import '../../../domain/multimedia_related/entities/entities.dart';
import '../../core/util/util.dart';
import '../dtos/dtos.dart';

class PlaylistMapper {
  static List<Playlist> topPlaylistFromRemoteToEntity(
      TopPlaylistsDto topPlaylists) {
    List<Playlist> topFourthPlaylists = topPlaylists.playlists
        .map((element) => Playlist(
              id: PlaylistID(element.id),
              image: PlaylistImage(
                  ImageConverter.fromDynamicListToIntList(element.image)),
            ))
        .toList();
    return topFourthPlaylists;
  }
}
