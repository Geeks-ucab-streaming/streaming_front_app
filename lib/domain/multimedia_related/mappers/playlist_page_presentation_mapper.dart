import '../../../domain/multimedia_related/entities/entities.dart';
import '../data_presentation/data_presentation.dart';

class PlaylistPagePresentationMapper {
  static PlaylistPagePresentation playlistPageFromEntityToPresentation(
    Playlist playlist
  ) {
    return PlaylistPagePresentation(
      playlist: () {
        return PlaylistPageInfo(
          id: playlist.getId() as String,
          name: playlist.getName() as String,
          image: playlist.getImage() as List<int>,
          duration: playlist.getDuration() as String,
          totalPlays: playlist.getPlays().toString());
      }(),
      songs: playlist.getSongs()?.map(
        (song) {
          return PlaylistSongPresentation(
            id: song.getId() as String,
            name: song.getName() as String,
            duration: song.getDuration() as String
            );
        },
      ).toList() as List<PlaylistSongPresentation>,
    );
  }
}