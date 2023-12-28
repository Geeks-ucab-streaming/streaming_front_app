import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'artist_dto.freezed.dart';
// Class is serializable
part 'artist_dto.g.dart';

@freezed
class ArtistDto with _$ArtistDto {
  const factory ArtistDto({
    required String id,
    required String name,
    required List<dynamic> image,
    required List<ArtistAlbumDto> albums,
    required List<ArtistSongDto> songs,
  }) = _ArtistDto;

  factory ArtistDto.fromJson(Map<String, Object?> json) =>
      _$ArtistDtoFromJson(json);
}

@freezed
class ArtistAlbumDto with _$ArtistAlbumDto {
  const factory ArtistAlbumDto({
    required String id,
    required List<dynamic> image,
  }) = _ArtistAlbumDto;

  factory ArtistAlbumDto.fromJson(Map<String, Object?> json) =>
      _$ArtistAlbumDtoFromJson(json);
}

@freezed
class ArtistSongDto with _$ArtistSongDto {
  const factory ArtistSongDto({
    required String id,
    required String duration,
    required List<dynamic> image,
    required List<ArtistSongArtistDto> artists,
  }) = _ArtistSongDto;

  factory ArtistSongDto.fromJson(Map<String, Object?> json) =>
      _$ArtistSongDtoFromJson(json);
}

@freezed
class ArtistSongArtistDto with _$ArtistSongArtistDto {
  const factory ArtistSongArtistDto({
    required String id,
    required String name,
  }) = _ArtistSongArtistDto;

  factory ArtistSongArtistDto.fromJson(Map<String, Object?> json) =>
      _$ArtistSongArtistDtoFromJson(json);
}
