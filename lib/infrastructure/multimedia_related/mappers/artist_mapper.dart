import '../../../domain/multimedia_related/entities/entities.dart';
import '../dtos/dtos.dart';

class ArtistMapper {
  static Artist artistCompleteInfoFromRemoteToEntity(ArtistDto artistDto) {
    return Artist(
      id: ArtistId(artistDto.id),
      name: ArtistName(artistDto.name),
      image: ArtistImage(
        artistDto.image.getImageAsIntList(),
      ),
      artistGenre: ArtistGenre(artistDto.genre),
      albums: artistDto.albums
          .map(
            (artistAlbumDto) => Album(
              id: AlbumId(artistAlbumDto.id),
              image: AlbumImage(
                artistAlbumDto.image.getImageAsIntList(),
              ),
            ),
          )
          .toList(),
      songs: artistDto.songs
          .map(
            (artistSongDto) => Song(
              id: SongId(artistSongDto.songId),
              name: SongName(artistSongDto.name),
              duration: SongDuration(
                artistSongDto.duration,
              ),
              image: SongImage(
                artistSongDto.image.getImageAsIntList(),
              ),
              artists:
                  artistSongDto.artists.map((element) => element.name).toList(),
            ),
          )
          .toList(),
    );
  }

  static List<Artist> trendingArtistsFromRemoteToEntity(
      TrendingArtistsDto trendingArtistDto) {
    List<Artist> trendingArtists = trendingArtistDto.artists
        .map(
          (artist) => Artist(
            id: ArtistId(artist.id),
            image: ArtistImage(
              artist.image.getImageAsIntList(),
            ),
            name: ArtistName(artist.name),
          ),
        )
        .toList();
    return trendingArtists;
  }
}
