import '../../../domain/core/entities/entities.dart';
import '../dtos/dtos.dart';

class AdvertisementMapper {
  static Advertisement fromRemoteToEntity(AdvertisementDto advertisementDto) {
    return Advertisement(
      id: AdvertisementId(advertisementDto.id),
      image: AdvertisementImage(
        advertisementDto.image.getImageAsIntList(),
      ),
    );
  }
}
