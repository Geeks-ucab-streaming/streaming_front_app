import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'top_playlist_dto.freezed.dart';
// Class is serializable
part 'top_playlist_dto.g.dart';

@freezed
class TopPlaylistsDto with _$TopPlaylistsDto {
  const factory TopPlaylistsDto({
    required List<TopPlaylistDto> playlists,
  }) = _TopPlaylistsDto;

  factory TopPlaylistsDto.fromJson(Map<String, Object?> json) =>
      _$TopPlaylistsDtoFromJson(json);
}

@freezed
class TopPlaylistDto with _$TopPlaylistDto {
  const factory TopPlaylistDto({
    required String id,
    required List<dynamic> image,
  }) = _TopPlaylistDto;

  factory TopPlaylistDto.fromJson(Map<String, Object?> json) =>
      _$TopPlaylistDtoFromJson(json);
}
