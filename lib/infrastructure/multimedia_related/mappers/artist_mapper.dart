import '../../../domain/multimedia_related/entities/entities.dart';
import '../../core/util/util.dart';
import '../dtos/dtos.dart';

class ArtistMapper {
  static Artist artistCompleteInfoFromRemoteToEntity(ArtistDto artistDto) {
    return Artist(
      id: ArtistId(artistDto.id),
      name: ArtistName(artistDto.name),
      image: ArtistImage(
        ImageConverter.fromDynamicListToIntList(artistDto.image),
      ),
      albums: artistDto.albums
          .map(
            (artistAlbumDto) => Album(
              id: AlbumId(artistAlbumDto.id),
              image: AlbumImage(
                ImageConverter.fromDynamicListToIntList(artistAlbumDto.image),
              ),
            ),
          )
          .toList(),
      songs: artistDto.songs
          .map(
            (artistSongDto) => Song(
              id: SongId(artistSongDto.id),
              duration: SongDuration(
                int.parse(artistSongDto.duration),
              ),
              image: SongImage(
                ImageConverter.fromDynamicListToIntList(artistSongDto.image),
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
              ImageConverter.fromDynamicListToIntList(artist.image),
            ),
            name: ArtistName(artist.name),
          ),
        )
        .toList();
    return trendingArtists;
  }
}
