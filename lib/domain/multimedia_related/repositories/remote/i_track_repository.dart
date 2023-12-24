import '../../entities/entities.dart';

abstract class ITrackRepository {
  Song getTrackById(String trackId);
  List<Song> getTracksByArtistId(String artistId);
  List<Song> getTracksByPlaylistId(String playlistId);
}
