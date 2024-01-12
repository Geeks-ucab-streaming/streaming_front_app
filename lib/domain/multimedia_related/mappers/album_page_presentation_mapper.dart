import '../../../domain/multimedia_related/entities/entities.dart';
import '../data_presentation/data_presentation.dart';

class AlbumPagePresentationMapper {
  static AlbumPagePresentation albumPageFromEntityToPresentation(
    Album album
  ) {
    return AlbumPagePresentation(
      album: () {
        String albumTotalSongs =
            album.getSongs()?.length.toString() as String;
        albumTotalSongs = (album.getSongs()?.length as int == 1)
            ? '$albumTotalSongs canción'
            : '$albumTotalSongs canciones';

        return AlbumPageInfo(
          id: album.getId() as String,
          name: album.getName() as String,
          image: album.getImage() as List<int>,
          duration: '4 mins',//album.getDuration() as String,         //CAMBIAR ESTO
          totalSongs: albumTotalSongs,
          artist: album.getArtist() as String
          );
      }(),
      songs: album.getSongs()?.map(
        (song) {
          return AlbumSongPresentation(
            id: song.getId() as String,
            name: song.getName() as String,
            );
        },
      ).toList() as List<AlbumSongPresentation>,
    );
  }
}