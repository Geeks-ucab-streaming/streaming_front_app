import 'package:dartz/dartz.dart';

import '../../advetisement.dart';
import '../../repository_error.dart';

abstract class IAdvertisementRepository {
  Future<Either<RepositoryError, Advertisement>> getRandomAdvertisement();
}
