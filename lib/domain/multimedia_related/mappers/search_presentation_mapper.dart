import '../data_presentation/data_presentation.dart';
import '../entities/entities.dart';

class SearchPresentationMapper {
  static SearchPresentation searchFromEntityToPresentation(
      //"queried" suffix only to differentiate from the attributes in SearchPresentation
      //List<Artist> queriedArtists,
      //List<Playlist> queriedPlaylists,
      //List<Album> queriedAlbums,
      //List<Song> queriedSongs,
      SearchResult queriedSearchResult) {
    return SearchPresentation(
      artists: queriedSearchResult
          .getArtists()
          ?.map(
            (element) => SearchArtist(
              id: element.getId() as String,
              name: element.getName() as String,
              image: element.getImage() as List<int>,
            ),
          )
          .toList() as List<SearchArtist>,
      trackList: queriedSearchResult.getSongs()?.map(
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
      ).toList() as List<SearchTrackListElement>,
      playlists: queriedSearchResult
          .getPlaylists()
          ?.map(
            (element) => SearchPlaylist(
              id: element.getId() as String,
              image: element.getImage() as List<int>,
              name: element.getName() as String,
            ),
          )
          .toList() as List<SearchPlaylist>,
      albums: queriedSearchResult
          .getAlbums()
          ?.map(
            (element) => SearchAlbum(
              id: element.getId() as String,
              image: element.getImage() as List<int>,
              name: element.getName() as String,
            ),
          )
          .toList() as List<SearchAlbum>,
    );
  }
}
