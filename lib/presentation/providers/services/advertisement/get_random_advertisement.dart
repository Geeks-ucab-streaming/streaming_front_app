import 'package:dartz/dartz.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:streaming_front_app/domain/core/advetisement.dart';
import 'package:streaming_front_app/domain/core/repository_error.dart';
import 'package:streaming_front_app/infrastructure/core/factories/factories.dart';
import 'package:streaming_front_app/presentation/providers/providers.dart';

part 'get_random_advertisement.g.dart';

@riverpod
Future<Either<RepositoryError, Advertisement>> getRandomAdvertisement(
    GetRandomAdvertisementRef ref) {
  // get the repository
  final repo = ref.watch(advertisementRepositoryInjectionProvider);

  return repo.getRandomAdvertisement();
}
