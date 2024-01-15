import '../../../domain/core/entities/entities.dart';
import '../dtos/dtos.dart';

// This class is as static because is not going to be use in services
class ImageMapper {
  static Image fromRemoteToEntity(ImageDto imageDto) {
    return Image(
      imageDto.getImageAsIntList(),
    );
  }
}
