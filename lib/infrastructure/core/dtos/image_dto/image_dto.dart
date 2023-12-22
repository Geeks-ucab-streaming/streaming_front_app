import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'image_dto.freezed.dart';

// Class is serializable
part 'image_dto.g.dart';

@freezed
class ImageDto with _$ImageDto {
  // private constructor to create custom methods
  const ImageDto._();

  // factory method
  const factory ImageDto({
    required String id,
    required List<dynamic> image,
  }) = _ImageDto;

  // method to get the image as a list of integers
  List<int> getImageAsIntList() {
    return image.map((e) => e as int).toList();
  }

  factory ImageDto.fromJson(Map<String, Object?> json) =>
      _$ImageDtoFromJson(json);
}
