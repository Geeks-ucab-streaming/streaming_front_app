import '../../../domain/multimedia_related/entities/entities.dart';
import '../dtos/dtos.dart';

class SongMapper {
  static List<Song> trendingSongsFromRemoteToEntity(
      TrendingSongsDto trendingSongsDto) {
    List<Song> trendingSongs = trendingSongsDto.songs
        .map(
          (song) => Song(
            id: SongId(song.id),
            name: SongName(song.name),
            duration: SongDuration(
              song.duration,
            ),
            artists: song.artists
                .map((trendingSongArtistDto) => trendingSongArtistDto.name)
                .toList(),
            image: SongImage(
              song.image.getImageAsIntList(),
            ),
          ),
        )
        .toList();
    return trendingSongs;
  }
}
