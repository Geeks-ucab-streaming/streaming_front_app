import '../../entities/entities.dart';

abstract class IAdvertisementRepository {
  Future<Advertisement> getRandomAdvertisement();
}
