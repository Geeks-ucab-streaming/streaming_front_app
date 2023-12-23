import '../../../domain/core/data_presentation/data_presentation.dart';
import '../../../domain/core/entities/entities.dart';
import '../dtos/dtos.dart';
import 'mappers.dart';

class AdvertisementMapper {
  static Advertisement fromRemoteToEntity(AdvertisementDto advertisementDto) {
    return Advertisement(
      id: advertisementDto.id,
      image: ImageMapper.fromRemoteToEntity(advertisementDto.image),
    );
  }

  static AdvertisementPresentation fromEntityToPresentation(
      Advertisement advertisement) {
    return AdvertisementPresentation(
      advertisement.id as String,
      advertisement.image?.image as List<int>,
    );
  }
}
