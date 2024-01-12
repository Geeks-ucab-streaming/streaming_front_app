import '../../../domain/multimedia_related/entities/entities.dart';
import '../dtos/dtos.dart';

class PlaylistMapper {
  static List<Playlist> topPlaylistFromRemoteToEntity(
      TopPlaylistsDto topPlaylists) {
    List<Playlist> topFourthPlaylists = topPlaylists.playlists
        .map((element) => Playlist(
              id: PlaylistID(element.id),
              image: PlaylistImage(
                element.image.getImageAsIntList(),
              ),
            ))
        .toList();
    return topFourthPlaylists;
  }

  static Playlist playlistByIdFromRemoteToEntity(PlaylistDto playlistDto) {
    return Playlist(
      id: PlaylistID(playlistDto.id),
      name: PlaylistName(playlistDto.name),
      image: PlaylistImage(
        playlistDto.image.getImageAsIntList(),
      ),
      duration: PlaylistDuration(playlistDto.duration),
      plays: PlaylistPlays(playlistDto.streams),
      songs: playlistDto.songs
          .map((playlistSongDto) => Song(
                id: SongId(playlistSongDto.songId),
                name: SongName(playlistSongDto.name),
                image: SongImage(
                  playlistSongDto.image.getImageAsIntList(),
                ),
                duration: SongDuration(
                  playlistSongDto.duration,
                ),
              ))
          .toList(),
    );
  }
}
