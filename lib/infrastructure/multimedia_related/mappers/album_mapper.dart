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

  static Album albumByIdFromRemoteToEntity(AlbumDto albumDto){
    return Album(
      id: AlbumId(albumDto.id),
      name: AlbumName(albumDto.name),
      image: AlbumImage(
        albumDto.image.getImageAsIntList(),
      ),
      duration: AlbumDuration(albumDto.duration),
      artist: AlbumArtist(albumDto.songs.first.artists.first.name), //TEMPORAL HASTA QUE SE PASE BIEN ARTISTA
      songs: albumDto.songs
        .map((albumSongDto) => Song(
                id: SongId(albumSongDto.songId),
                name: SongName(albumSongDto.name),
                image: SongImage(
                  albumSongDto.image.getImageAsIntList(),
                ),
                duration: SongDuration(
                  albumSongDto.duration,
                ),
              ))
              .toList(),
    );
  }
}
