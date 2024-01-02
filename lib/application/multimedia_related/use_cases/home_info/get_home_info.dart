import 'package:get_it/get_it.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../../domain/core/repositories/i_repositories.dart';
import '../../../../../infrastructure/core/repositories/repositories.dart';
import '../../../../domain/core/entities/entities.dart';
import '../../../../domain/multimedia_related/data_presentation/data_presentation.dart';
import '../../../../domain/multimedia_related/entities/entities.dart';
import '../../../../domain/multimedia_related/mappers/mappers.dart';
import '../../../../domain/multimedia_related/repositories/i_repositories.dart';
import '../../../../infrastructure/multimedia_related/repositories/repositories.dart';

part 'get_home_info.g.dart';

@riverpod
Future<HomePresentation> getHomeInfo(GetHomeInfoRef ref) async {
  // getIt instance
  GetIt getIt = GetIt.I;
  // get the repositories
  final IAdvertisementRepository advertisementRepo =
      getIt<AdvertisementRepositoryImpl>();
  final IPlaylistRepository playlistsRepo = getIt<PlaylistRepositoryImpl>();
  final IAlbumRepository albumsRepo = getIt<AlbumRepositoryImpl>();
  final IArtistRepository artistsRepo = getIt<ArtistRepositoryImpl>();
  final ISongRepository songsRepo = getIt<SongRepositoryImpl>();
  // get the information from the repositories
  final Advertisement advertisement =
      await advertisementRepo.getRandomAdvertisement();
  final List<Playlist> topPlaylists =
      await playlistsRepo.getTopFourthPlaylist();
  final List<Album> topAlbums = await albumsRepo.getTopAlbums();
  final List<Artist> topArtists = await artistsRepo.getTrendingArtists();
  final List<Song> trendingSongs = await songsRepo.getTrendingSongs();

  return HomePresentationMapper.homeFromEntityToPresentation(
    advertisement,
    topPlaylists,
    topAlbums,
    topArtists,
    trendingSongs,
  );
}
