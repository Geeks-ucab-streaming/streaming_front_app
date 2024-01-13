import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:streaming_front_app/infrastructure/core/dtos/dtos.dart';

part 'song_dto.freezed.dart';

// Class is serializable
part 'song_dto.g.dart';

@freezed
class SongDto with _$SongDto {
  const factory SongDto({
    required String songId,
    required String name,
    required String duration,
    required String compositor,
    required ImageDto image,
  }) = _SongDto;

  factory SongDto.fromJson(Map<String, Object?> json) =>
      _$SongDtoFromJson(json);
}
