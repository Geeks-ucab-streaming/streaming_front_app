import 'package:get_it/get_it.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../domain/multimedia_related/data_presentation/data_presentation.dart';
import '../../../../domain/multimedia_related/entities/entities.dart';
import '../../../../domain/multimedia_related/mappers/mappers.dart';
import '../../../../domain/multimedia_related/repositories/i_repositories.dart';
import '../../../../infrastructure/multimedia_related/repositories/repositories.dart';

part 'get_artist_info.g.dart';

@riverpod
Future<ArtistPagePresentation> getArtistInfo(
  GetArtistInfoRef ref,
  String artistId,
) async {
  // getIt instance
  GetIt getIt = GetIt.I;
  // get the repository
  final IArtistRepository artistRepo = getIt<ArtistRepositoryImpl>();
  // get the information from the repository
  final Artist artistWithAllInfo =
      await artistRepo.getArtistAllInfoById(artistId);

  return ArtistPagePresentationMapper.artistPageFromEntityToPresentation(
      artistWithAllInfo);
}
