import '../../../domain/core/entities/entities.dart';
import '../dtos/image_dto/image_dto.dart';

class ImageFactoryImpl {
  Image reconstituteImageFrom(ImageDto imageDto) {
    Image newImage = Image(
      imageDto.getImageAsIntList(),
    );
    return newImage;
  }
}
