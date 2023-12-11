import '../../../domain/core/image.dart';
import '../dtos/image_dto/image_dto.dart';

class ImageFactoryImpl {
  Image reconstituteImageFrom(ImageDto imageDto) {
    Image newImage = Image(imageDto.id, imageDto.getImageAsIntList());
    return newImage;
  }
}
