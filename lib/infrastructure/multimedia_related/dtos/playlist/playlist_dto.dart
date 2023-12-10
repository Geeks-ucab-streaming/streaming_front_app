import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

import '../../../core/dtos/image_dto/image_dto.dart';
import '../track/track_dto.dart';

part 'playlist_dto.freezed.dart';
// Class is serializable
part 'playlist_dto.g.dart';

@freezed
class PlaylistDto with _$PlaylistDto {
  const factory PlaylistDto({
    required String id,
    required String name,
    required ImageDto image,
    required String duration,
    required int reproductions,
    required List<TrackDto> tracks,
  }) = _PlaylistDto;

  factory PlaylistDto.fromJson(Map<String, Object?> json) =>
      _$PlaylistDtoFromJson(json);
}
