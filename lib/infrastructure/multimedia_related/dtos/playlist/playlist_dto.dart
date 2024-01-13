import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/dtos/dtos.dart';

part 'playlist_dto.freezed.dart';
// Class is serializable
part 'playlist_dto.g.dart';

@freezed
class PlaylistDto with _$PlaylistDto {
  const factory PlaylistDto({
    required String id,
    required String name,
    required String duration,
    required ImageDto image,
    required int streams,
    required List<PlaylistCreatorDto> creators,
    required List<PlaylistSongDto> songs,
  }) = _PlaylistDto;

  factory PlaylistDto.fromJson(Map<String, Object?> json) =>
      _$PlaylistDtoFromJson(json);
}

@freezed
class PlaylistCreatorDto with _$PlaylistCreatorDto {
  const factory PlaylistCreatorDto({
    required String creatorId,
    required String creatorName,
  }) = _PlaylistCreatorDto;

  factory PlaylistCreatorDto.fromJson(Map<String, Object?> json) =>
      _$PlaylistCreatorDtoFromJson(json);
}

@freezed
class PlaylistSongDto with _$PlaylistSongDto {
  const factory PlaylistSongDto({
    required String songId,
    required String name,
    required String duration,
    required ImageDto image,
    required List<PlaylistSongArtistDto> artists,
  }) = _PlaylistSongDto;

  factory PlaylistSongDto.fromJson(Map<String, Object?> json) =>
      _$PlaylistSongDtoFromJson(json);
}

@freezed
class PlaylistSongArtistDto with _$PlaylistSongArtistDto {
  const factory PlaylistSongArtistDto({
    required String id,
    required String name,
  }) = _PlaylistSongArtistDto;

  factory PlaylistSongArtistDto.fromJson(Map<String, Object?> json) =>
      _$PlaylistSongArtistDtoFromJson(json);
}
