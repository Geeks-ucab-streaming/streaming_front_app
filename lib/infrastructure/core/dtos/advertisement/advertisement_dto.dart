import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

import '../image_dto/image_dto.dart';

part 'advertisement_dto.freezed.dart';

// Class is serializable
part 'advertisement_dto.g.dart';

@freezed
class AdvertisementDto with _$AdvertisementDto {
  const factory AdvertisementDto({
    required String id,
    required ImageDto image,
  }) = _AdvertisementDto;

  factory AdvertisementDto.fromJson(Map<String, Object?> json) =>
      _$AdvertisementDtoFromJson(json);
}
