import '../../../domain/multimedia_related/entities/entities.dart';
import '../data_presentation/data_presentation.dart';

class ArtistPagePresentationMapper {
  static ArtistPagePresentation artistPageFromEntityToPresentation(
    Artist artist,
  ) {
    return ArtistPagePresentation(
      artist: ArtistPageInfo(
        id: artist.getId() as String,
        name: artist.getName() as String,
        image: artist.getImage() as List<int>,
        totalAmountAlbums: artist.getAlbums()?.length.toString() as String,
        totalSongsAlbums: artist.getSongs()?.length.toString() as String,
      ),
      albums: artist
          .getAlbums()
          ?.map(
            (album) => ArtistAlbumPresentation(
              id: album.getId() as String,
              image: album.getImage() as List<int>,
            ),
          )
          .toList() as List<ArtistAlbumPresentation>,
      songs: artist
          .getSongs()
          ?.map(
            (song) => ArtistSongPresentation(
              id: song.getId() as String,
              name: song.getName() as String,
              composer: song.getArtist()?.join(' ') as String,
              duration: song.getDuration() as String,
              image: song.getImage() as List<int>,
            ),
          )
          .toList() as List<ArtistSongPresentation>,
    );
  }
}
