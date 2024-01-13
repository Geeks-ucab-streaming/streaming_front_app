import 'package:get_it/get_it.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../domain/core/data_presentation/data_presentation.dart';
import '../../../../domain/core/mappers/mappers.dart';
import '../../../../domain/core/repositories/i_repositories.dart';
import '../../../../infrastructure/core/repositories/repositories.dart';

part 'get_random_advertisement.g.dart';

@riverpod
Future<AdvertisementPresentation> getRandomAdvertisement(
    GetRandomAdvertisementRef ref) async {
  // getIt instance
  GetIt getIt = GetIt.I;
  // get the repository
  final IAdvertisementRepository repo = getIt<AdvertisementRepositoryImpl>();
  // get the random advertisement
  final advertisement = await repo.getRandomAdvertisement();

  return AdvertisementPresentationMapper.fromEntityToPresentation(
    advertisement,
  );
}
