import 'image_factory_impl.dart';

import '../../../domain/core/advetisement.dart';
import '../dtos/advertisement/advertisement_dto.dart';

class AdvertisementFactoryImpl {
  AdvertisementFactoryImpl(this.imageFactory);

  final ImageFactoryImpl imageFactory;

  Advertisement reconstituteAdvertisementFrom(
      AdvertisementDto advertisementDto) {
    Advertisement newAdvertisement = Advertisement(
      advertisementDto.id,
      imageFactory.reconstituteImageFrom(advertisementDto.image),
    );
    return newAdvertisement;
  }
}
