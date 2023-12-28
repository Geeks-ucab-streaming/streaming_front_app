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

  static Playlist playlistByIdFromRemoteToEntity(PlaylistDto playlistDto) {
    return Playlist(
      id: PlaylistID(playlistDto.id),
      name: PlaylistName(playlistDto.name),
      image: PlaylistImage(
        ImageConverter.fromDynamicListToIntList(
          playlistDto.image,
        ),
      ),
      duration: PlaylistDuration(
        int.parse(playlistDto.duration),
      ),
      songs: playlistDto.songs
          .map((playlistSongDto) => Song(
                id: SongId(playlistSongDto.songId),
                name: SongName(playlistSongDto.name),
                image: SongImage(
                  ImageConverter.fromDynamicListToIntList(
                    playlistSongDto.image,
                  ),
                ),
                duration: SongDuration(
                  int.parse(playlistSongDto.duration),
                ),
              ))
          .toList(),
    );
  }
}
