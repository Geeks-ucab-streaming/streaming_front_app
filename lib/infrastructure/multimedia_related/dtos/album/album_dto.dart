import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

import '../../../core/dtos/dtos.dart';

part 'album_dto.freezed.dart';
// Class is serializable
part 'album_dto.g.dart';

@freezed
class AlbumDto with _$AlbumDto {
  const factory AlbumDto({
    required String id,
    required String name,
    required String duration,
    required ImageDto image,
    required int streams,
    required List<AlbumSongDto> songs,
    required List<AlbumCreatorDto> creators,
  }) = _AlbumDto;

  factory AlbumDto.fromJson(Map<String, Object?> json) =>
      _$AlbumDtoFromJson(json);
}

@freezed
class AlbumCreatorDto with _$AlbumCreatorDto {
  const factory AlbumCreatorDto({
    required String creatorId,
    required String creatorName,
  }) = _AlbumCreatorDto;

  factory AlbumCreatorDto.fromJson(Map<String, Object?> json) =>
      _$AlbumCreatorDtoFromJson(json);
}

@freezed
class AlbumSongDto with _$AlbumSongDto {
  const factory AlbumSongDto({
    required String id,
    required String name,
    required String duration,
    required ImageDto image,
    required List<AlbumSongArtistDto> artists,
  }) = _AlbumSongDto;

  factory AlbumSongDto.fromJson(Map<String, Object?> json) =>
      _$AlbumSongDtoFromJson(json);
}

@freezed
class AlbumSongArtistDto with _$AlbumSongArtistDto {
  const factory AlbumSongArtistDto({
    required String id,
    required String name,
  }) = _AlbumSongArtistDto;

  factory AlbumSongArtistDto.fromJson(Map<String, Object?> json) =>
      _$AlbumSongArtistDtoFromJson(json);
}
