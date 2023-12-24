import 'package:streaming_front_app/infrastructure/core/util/util.dart';

import '../../../domain/core/entities/entities.dart';
import '../dtos/dtos.dart';

class AdvertisementMapper {
  static Advertisement fromRemoteToEntity(AdvertisementDto advertisementDto) {
    return Advertisement(
      id: advertisementDto.id,
      image: Image(
        ImageConverter.fromDynamicListToIntList(advertisementDto.image),
      ),
    );
  }
}
