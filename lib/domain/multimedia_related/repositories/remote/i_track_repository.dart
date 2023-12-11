import '../../track.dart';

abstract class ITrackRepository {
  Track getTrackById(String trackId);
  List<Track> getTracksByArtistId(String artistId);
  List<Track> getTracksByPlaylistId(String playlistId);
}
