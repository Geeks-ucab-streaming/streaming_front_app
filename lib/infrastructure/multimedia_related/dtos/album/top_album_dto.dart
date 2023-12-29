import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:streaming_front_app/infrastructure/core/dtos/dtos.dart';

part 'top_album_dto.freezed.dart';
// Class is serializable
part 'top_album_dto.g.dart';

@freezed
class TopAlbumsDto with _$TopAlbumsDto {
  const factory TopAlbumsDto({
    required List<TopAlbumDto> playlists,
  }) = _TopAlbumsDto;

  factory TopAlbumsDto.fromJson(Map<String, Object?> json) =>
      _$TopAlbumsDtoFromJson(json);
}

@freezed
class TopAlbumDto with _$TopAlbumDto {
  const factory TopAlbumDto({
    required String id,
    required ImageDto image,
  }) = _TopAlbumDto;

  factory TopAlbumDto.fromJson(Map<String, Object?> json) =>
      _$TopAlbumDtoFromJson(json);
}
