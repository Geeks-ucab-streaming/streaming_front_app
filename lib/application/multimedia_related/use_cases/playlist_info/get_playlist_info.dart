import 'package:get_it/get_it.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../domain/multimedia_related/data_presentation/data_presentation.dart';
import '../../../../domain/multimedia_related/entities/entities.dart';
import '../../../../domain/multimedia_related/mappers/mappers.dart';
import '../../../../domain/multimedia_related/repositories/i_repositories.dart';
import '../../../../infrastructure/multimedia_related/repositories/repositories.dart';

part 'get_playlist_info.g.dart';

@riverpod
Future<PlaylistPagePresentation> getPlaylistInfo(
  GetPlaylistInfoRef ref,
  String playlistId,
) async {
  //getIt instance
  GetIt getIt = GetIt.I;
  // get the repository
  final IPlaylistRepository playlistRepo = getIt<PlaylistRepositoryImpl>();
  //get the information from the repository
  final Playlist playlist =
    await playlistRepo.getPlaylistById(playlistId);

  return PlaylistPagePresentationMapper.playlistPageFromEntityToPresentation(
    playlist);
}