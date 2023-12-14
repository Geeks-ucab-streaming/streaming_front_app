import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../domain/core/entities/entities.dart';
import '../../providers.dart';

part 'get_random_advertisement.g.dart';

@riverpod
Future<Advertisement> getRandomAdvertisement(GetRandomAdvertisementRef ref) {
  // get the repository
  final repo = ref.watch(advertisementRepositoryInjectionProvider);

  return repo.getRandomAdvertisement();
}
