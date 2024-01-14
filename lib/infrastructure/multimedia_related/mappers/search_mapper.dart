import '../../../domain/multimedia_related/entities/entities.dart';
import '../dtos/dtos.dart';

class SearchMapper{
  static SearchResult searchResultFromRemoteToEntity(SearchDto searchDto){
    return SearchResult(
      songs: searchDto.songs?.map(
        (searchSongDto) => Song(
            id: SongId(searchSongDto.id),
            name: SongName(searchSongDto.name),
            duration: SongDuration(
              searchSongDto.duration,
            ),
            artists: [searchSongDto.artists.first.name],
            image: SongImage(
              searchSongDto.image.getImageAsIntList(),
            ),
          )
      ).toList(),
      artists: searchDto.artist?.map(
        (artist) {
          return Artist(
            id: ArtistId(artist.id),
            name: ArtistName(artist.name),
            image: ArtistImage(
              artist.image.getImageAsIntList(),
            ),
          );
        },
      ).toList(),
      playlists: searchDto.playlists?.map(
              (playlist) => Playlist(
            id: PlaylistID(playlist.id),
            image: PlaylistImage(
              playlist.image.getImageAsIntList(),
            ),
            name: PlaylistName(playlist.name),
          ),
      ).toList(),
      albums: searchDto.albums
        .map(
          (album) => Album(
            id: AlbumId(album.id),
            image: AlbumImage(
              album.image.getImageAsIntList(),
            ),
            name: AlbumName(album.name),
          ),
        ).toList(),
    );
  }
}