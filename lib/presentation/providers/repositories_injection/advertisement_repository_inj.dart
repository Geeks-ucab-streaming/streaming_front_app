import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:streaming_front_app/presentation/providers/providers.dart';

import '../../../infrastructure/core/repositories/repositories.dart';

part 'advertisement_repository_inj.g.dart';

@riverpod
AdvertisementRepositoryImpl advertisementRepositoryInjection(
    AdvertisementRepositoryInjectionRef ref) {
  // get the elements needed for the repository
  final logger = ref.watch(loggerInjectionProvider);
  final advertisementFactory = ref.watch(advertisementFactoryInjectionProvider);
  final repositoryErrorFactory =
      ref.watch(repositoryErrorFactoryInjectionProvider);
  //
  final repository = AdvertisementRepositoryImpl(
    logger,
    advertisementFactory,
    repositoryErrorFactory,
  );

  return repository;
}
