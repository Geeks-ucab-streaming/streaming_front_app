import '../../entities/entities.dart';

abstract class IPlaylistRepository {
  // get playlist by id
  Playlist getPlaylistById(String playlistId);
  // get the playlists created by creator id
  List<Playlist> getPlaylistCreatedBy(String creatorId);
  // get top playlists NAME SHOULD BE MORE PRECISE BUT IT MUST BE ASKED TO BACKEND
  List<Playlist> getTopFourthPlaylist(String creatorId);
}
