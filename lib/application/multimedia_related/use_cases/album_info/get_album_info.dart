import 'package:get_it/get_it.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../domain/multimedia_related/data_presentation/data_presentation.dart';
import '../../../../domain/multimedia_related/entities/entities.dart';
import '../../../../domain/multimedia_related/mappers/mappers.dart';
import '../../../../domain/multimedia_related/repositories/i_repositories.dart';
import '../../../../infrastructure/multimedia_related/repositories/repositories.dart';

part 'get_album_info.g.dart';

@riverpod
Future<AlbumPagePresentation> getAlbumInfo(
  GetAlbumInfoRef ref,
  String albumId,
) async {
  //getIt instance
  GetIt getIt = GetIt.I;
  // get the repository
  final IAlbumRepository albumRepo = getIt<AlbumRepositoryImpl>();
  //get the information from the repository
  final Album album =
    await albumRepo.getAlbumById(albumId);

  return AlbumPagePresentationMapper.albumPageFromEntityToPresentation(
    album);
}