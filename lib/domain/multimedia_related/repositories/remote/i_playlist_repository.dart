import '../../entities/entities.dart';

abstract class IPlaylistRepository {
  // get playlist by id
  Future<Playlist> getPlaylistById(String playlistId);
  // get the playlists created by creator id
  Future<List<Playlist>> getPlaylistCreatedBy(String creatorId);
  // get top fourth playlists
  Future<List<Playlist>> getTopFourthPlaylist();
}
