import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:streaming_front_app/infrastructure/core/dtos/dtos.dart';

import '../image_dto/image_dto.dart';

part 'advertisement_dto.freezed.dart';

// Class is serializable
part 'advertisement_dto.g.dart';

@freezed
class AdvertisementDto with _$AdvertisementDto {
  const factory AdvertisementDto({
    required IdDto id,
    required ImageDto image,
  }) = _AdvertisementDto;

  factory AdvertisementDto.fromJson(Map<String, Object?> json) =>
      _$AdvertisementDtoFromJson(json);
}
