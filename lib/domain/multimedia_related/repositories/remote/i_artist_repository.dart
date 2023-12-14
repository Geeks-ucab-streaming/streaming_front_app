import '../../entities/entities.dart';

abstract class IArtistRepository {
  List<Artist> getAllArtist();
  Artist getArtistById(String artistId);
}
