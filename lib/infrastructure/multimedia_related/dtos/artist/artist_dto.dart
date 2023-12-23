import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

import '../../../core/dtos/dtos.dart';

part 'artist_dto.freezed.dart';
// Class is serializable
part 'artist_dto.g.dart';

@freezed
class ArtistDto with _$ArtistDto {
  const factory ArtistDto({
    required String id,
    required String name,
    required ImageDto image,
  }) = _ArtistDto;

  factory ArtistDto.fromJson(Map<String, Object?> json) =>
      _$ArtistDtoFromJson(json);
}
