import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'image_dto.freezed.dart';

// Class is serializable
part 'image_dto.g.dart';

@freezed
class ImageDto with _$ImageDto {
  const factory ImageDto({
    required String id,
    required List<dynamic> image,
  }) = _ImageDto;

  factory ImageDto.fromJson(Map<String, Object?> json) =>
      _$ImageDtoFromJson(json);
}
