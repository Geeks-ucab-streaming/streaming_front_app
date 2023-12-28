import '../../entities/entities.dart';

abstract class IArtistRepository {
  // get artist by id
  Future<Artist> getArtistById(String artistId);
  // get top artists
  Future<List<Artist>> getTrendingArtists();
}
