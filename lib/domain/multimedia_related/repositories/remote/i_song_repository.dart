import '../../entities/entities.dart';

abstract class ISongRepository {
  // get song by id
  Future<Song> getTrackById(String trackId);
  // get songs by artist
  Future<List<Song>> getSongsByArtistId(String artistId);
  // get songs by playlist
  Future<List<Song>> getSongsByPlaylistId(String playlistId);
  // get trending songs
  Future<List<Song>> getTrendingSongs();
}
