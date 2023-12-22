import '../../playlist.dart';

abstract class IPlaylistRepository {
  // Function to get the playlist created by artist
  List<Playlist> getPlaylistCreatedBy(String creatorId);
  Playlist getPlaylistById(String playlistId);
}
