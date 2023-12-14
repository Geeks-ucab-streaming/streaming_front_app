import '../../../domain/core/entities/entities.dart';
import 'factories.dart';

import '../dtos/dtos.dart';

class AdvertisementFactoryImpl {
  AdvertisementFactoryImpl(this.imageFactory, this.genericId);

  final ImageFactoryImpl imageFactory;
  final IdFactoryImpl genericId;

  Advertisement reconstituteAdvertisementFrom(
      AdvertisementDto advertisementDto) {
    Advertisement newAdvertisement = Advertisement(
      genericId.reconstituteIdFrom(advertisementDto.id),
      imageFactory.reconstituteImageFrom(advertisementDto.image),
    );
    return newAdvertisement;
  }
}
