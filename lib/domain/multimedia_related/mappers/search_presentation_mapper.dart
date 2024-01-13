import '../entities/entities.dart';
import '../../core/entities/entities.dart';
import '../data_presentation/data_presentation.dart';

class SearchPresentationMapper {
static SearchPresentation searchFromEntityToPresentation(
    //"queried" suffix only to differentiate from the attributes in SearchPresentation
    List<Artist> queriedArtists,
    List<Playlist> queriedPlaylists,
    List<Album> queriedAlbums,
    List<Song> queriedSongs,
  ) {
    return SearchPresentation(
      artists: queriedArtists.map(
            (element) => SearchArtist(
              id: element.getId() as String,
              name: element.getName() as String,
              image: element.getImage() as List<int>,
            ),
          )
          .toList(),
      trackList: queriedSongs.map(
        (element) {
          String trendingSongDuration = element.getDuration() as String;
          trendingSongDuration = (trendingSongDuration.substring(0, 2) == '00')
              ? trendingSongDuration.substring(3)
              : trendingSongDuration;

          return SearchTrackListElement(
            id: element.getId() as String,
            name: element.getName() as String,
            composer: element.getArtist()?.first as String,
            duration: trendingSongDuration,
            image: element.getImage() as List<int>,
          );
        },
      ).toList(),
      playlists: queriedPlaylists.map(
            (element) => SearchPlaylist(
              id: element.getId() as String,
              image: element.getImage() as List<int>,
            ),
          )
          .toList(),
      albums: queriedAlbums.map(
            (element) => SearchAlbum(
              id: element.getId() as String,
              image: element.getImage() as List<int>,
            ),
          )
          .toList(),
    );
  }
}