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

part 'get_search_info.g.dart';

@riverpod
Future<SearchPresentation> getHomeInfo(GetSearchInfoRef ref) async {
  // getIt instance
  GetIt getIt = GetIt.I;
  // get the repositories
  final IArtistRepository artistsRepo = getIt<ArtistRepositoryImpl>();
  final IPlaylistRepository playlistsRepo = getIt<PlaylistRepositoryImpl>();
  final IAlbumRepository albumsRepo = getIt<AlbumRepositoryImpl>();
  final ISongRepository songsRepo = getIt<SongRepositoryImpl>();
  // get the information from the repositories
  final List<Artist> artists = await artistsRepo.getTrendingArtists();
  final List<Playlist> playlists =
      await playlistsRepo.getTopFourthPlaylist();
  final List<Album> albums = await albumsRepo.getTopAlbums();
  final List<Song> songs = await songsRepo.getTrendingSongs();

  return SearchPresentationMapper.searchFromEntityToPresentation(
    artists,
    playlists,
    albums,
    songs,
  );
}