import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

import '../../dtos/dtos.dart';

part 'album_dto.freezed.dart';
// Class is serializable
part 'album_dto.g.dart';

@freezed
class AlbumDto with _$AlbumDto {
  const factory AlbumDto({
    required String id,
    required String name,
    required String compositor,
    // THIS NEEDS TO BE CHANGED
    required String imageURL,
    required List<SongDto> tracks,
    required ArtistDto artist,
  }) = _AlbumDto;

  factory AlbumDto.fromJson(Map<String, Object?> json) =>
      _$AlbumDtoFromJson(json);
}
