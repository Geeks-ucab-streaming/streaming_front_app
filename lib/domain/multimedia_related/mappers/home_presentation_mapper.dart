import '../../../domain/multimedia_related/entities/entities.dart';
import '../../core/entities/entities.dart';
import '../data_presentation/data_presentation.dart';

class HomePresentationMapper {
  static HomePresentation homeFromEntityToPresentation(
    Advertisement advertisement,
    List<Playlist> topPlaylists,
    List<Album> topAlbums,
    List<Artist> topArtists,
    List<Song> trendingSongs,
  ) {
    return HomePresentation(
      advertisement: HomeAdvertisement(
        id: advertisement.getId() as String,
        image: advertisement.getImage() as List<int>,
      ),
      playlists: topPlaylists
          .map(
            (element) => HomePlaylist(
              id: element.getId() as String,
              image: element.getImage() as List<int>,
            ),
          )
          .toList(),
      albums: topAlbums
          .map(
            (element) => HomeAlbum(
              id: element.getId() as String,
              image: element.getImage() as List<int>,
            ),
          )
          .toList(),
      artists: topArtists
          .map(
            (element) => HomeArtist(
              id: element.getId() as String,
              name: element.getName() as String,
              image: element.getImage() as List<int>,
            ),
          )
          .toList(),
      trackList: trendingSongs.map(
        (element) {
          String trendingSongDuration = element.getDuration() as String;
          trendingSongDuration = (trendingSongDuration.substring(0, 2) == '00')
              ? trendingSongDuration.substring(3)
              : trendingSongDuration;

          return HomeTrackListElement(
            id: element.getId() as String,
            name: element.getName() as String,
            composer: element.getArtist()?.first as String,
            duration: trendingSongDuration,
            image: element.getImage() as List<int>,
          );
        },
      ).toList(),
    );
  }
}
