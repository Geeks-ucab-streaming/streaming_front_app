import '../../../domain/multimedia_related/entities/entities.dart';
import '../../core/entities/entities.dart';
import '../data_presentation/data_presentation.dart';

class HomePresentationMapper {
  static HomePresentation homeFromEntityToPresentation(
    Advertisement advertisement,
    List<Playlist> topPlaylists,
    List<Album> topAlbums,
    List<Artist> topArtists,
    List<Song> trackList,
  ) {
    return HomePresentation(
      advertisement: HomeAdvertisement(
        //id: advertisement.id as String,
        id: 'Hi',
        //image: advertisement.image?.image as List<int>,
        image: [],
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
      artists: [] /*topArtists
          .map(
            (element) => HomeArtist(
              id: element.id as String,
              name: element.name as String,
              image: element.image as List<int>,
            ),
          )
          .toList()*/
      ,
      trackList: [],
    );
  }
}
