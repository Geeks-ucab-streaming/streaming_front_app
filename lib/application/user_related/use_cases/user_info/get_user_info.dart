/*
import 'package:get_it/get_it.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../domain/auth/data_presentation/data_presentation.dart';
import '../../../../domain/auth/mappers/mappers.dart';
import '../../../../domain/multimedia_related/entities/entities.dart';
import '../../../../domain/multimedia_related/mappers/mappers.dart';
import '../../../../domain/multimedia_related/repositories/i_repositories.dart';
import '../../../../infrastructure/multimedia_related/repositories/repositories.dart';

part 'get_user_info.g.dart';

@riverpod
Future<UserPresentation> getUserInfoFromAuthProvider(GetUserInfoRef ref) async {
  //getIt instance
  GetIt getIt = GetIt.I;
  // get the repository
  final IPlaylistRepository playlistRepo = getIt<PlaylistRepositoryImpl>();
  //get the information from the repository
  final User user = await playlistRepo.getPlaylistById(playlistId);

  return UserPresentationMapper.fromEntityToPresentation(
    user,
  );
}
*/