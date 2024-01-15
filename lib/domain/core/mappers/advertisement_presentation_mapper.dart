import '../../../domain/core/data_presentation/data_presentation.dart';
import '../../../domain/core/entities/entities.dart';

class AdvertisementPresentationMapper {
  static AdvertisementPresentation fromEntityToPresentation(
      Advertisement advertisement) {
    return AdvertisementPresentation(
      advertisement.getId() as String,
      advertisement.getImage() as List<int>,
    );
  }
}
