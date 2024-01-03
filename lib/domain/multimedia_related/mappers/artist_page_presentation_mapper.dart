import '../../../domain/multimedia_related/entities/entities.dart';
import '../data_presentation/data_presentation.dart';

class ArtistPagePresentationMapper {
  static ArtistPagePresentation artistPageFromEntityToPresentation(
    Artist artist,
  ) {
    return ArtistPagePresentation(
      artist: () {
        String artistTotalAmountAlbums =
            artist.getAlbums()?.length.toString() as String;
        artistTotalAmountAlbums = (artist.getAlbums()?.length as int == 1)
            ? '$artistTotalAmountAlbums álbum'
            : '$artistTotalAmountAlbums álbumes';

        String artistTotalAmountSongs =
            artist.getSongs()?.length.toString() as String;
        artistTotalAmountSongs = (artist.getSongs()?.length as int == 1)
            ? '$artistTotalAmountSongs canción'
            : '$artistTotalAmountSongs canciones';

        return ArtistPageInfo(
          id: artist.getId() as String,
          name: artist.getName() as String,
          image: artist.getImage() as List<int>,
          totalAmountAlbums: artistTotalAmountAlbums,
          totalSongsAlbums: artistTotalAmountSongs,
        );
      }(),
      albums: artist
          .getAlbums()
          ?.map(
            (album) => ArtistAlbumPresentation(
              id: album.getId() as String,
              image: album.getImage() as List<int>,
            ),
          )
          .toList() as List<ArtistAlbumPresentation>,
      songs: artist.getSongs()?.map((song) {
        String artistSongDuration = song.getDuration() as String;
        artistSongDuration = (artistSongDuration.substring(0, 2) == '00')
            ? artistSongDuration.substring(3)
            : artistSongDuration;

        return ArtistSongPresentation(
          id: song.getId() as String,
          name: 'TODO NOMBRE',
          composer: song.getArtist()?.join(', ') as String,
          duration: artistSongDuration,
          image: song.getImage() as List<int>,
        );
      }).toList() as List<ArtistSongPresentation>,
    );
  }
}
