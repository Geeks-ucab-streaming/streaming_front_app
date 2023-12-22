import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'track_dto.freezed.dart';

// Class is serializable
part 'track_dto.g.dart';

@freezed
class TrackDto with _$TrackDto {
  const factory TrackDto({
    required String id,
    required String name,
    required String compositor,
    required String imageURL,
    required double duration,
  }) = _TrackDto;

  factory TrackDto.fromJson(Map<String, Object?> json) =>
      _$TrackDtoFromJson(json);
}
