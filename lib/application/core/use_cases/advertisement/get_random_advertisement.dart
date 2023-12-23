import 'package:get_it/get_it.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../domain/core/data_presentation/data_presentation.dart';
import '../../../../infrastructure/core/mappers/mappers.dart';
import '../../../../infrastructure/core/repositories/repositories.dart';

part 'get_random_advertisement.g.dart';

@riverpod
Future<AdvertisementPresentation> getRandomAdvertisement(
    GetRandomAdvertisementRef ref) async {
  // getIt instance
  GetIt getIt = GetIt.I;
  // get the repository
  final repo = getIt<AdvertisementRepositoryImpl>();
  // get the random advertisement
  final advertisement = await repo.getRandomAdvertisement();

  return AdvertisementMapper.fromEntityToPresentation(advertisement);
}
