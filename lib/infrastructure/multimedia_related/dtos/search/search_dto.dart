import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:streaming_front_app/infrastructure/core/dtos/dtos.dart';

part 'search_dto.freezed.dart';

// Class is serializable
part 'search_dto.g.dart';

@freezed
class SearchDto with _$SearchDto {
  const factory SearchDto({
    required List<SearchSongDto> songs,
    required List<SearchArtistDto> artists,
    required List<SearchPlaylistDto> playlists,
    required List<SearchAlbumDto> albums,
  }) = _SearchDto;

  factory SearchDto.fromJson(Map<String, Object?> json) =>
      _$SearchDtoFromJson(json);
}

// Search song dto -------------------------------------------------------------
@freezed
class SearchSongDto with _$SearchSongDto {
  const factory SearchSongDto({
    required String id,
    required String name,
    required String duration,
    required List<SearchSongArtistDto> artists,
    required ImageDto image,
  }) = _SearchSongDto;

  factory SearchSongDto.fromJson(Map<String, Object?> json) =>
      _$SearchSongDtoFromJson(json);
}

@freezed
class SearchSongArtistDto with _$SearchSongArtistDto {
  const factory SearchSongArtistDto({
    required String id,
    required String name,
  }) = _SearchSongArtistDto;

  factory SearchSongArtistDto.fromJson(Map<String, Object?> json) =>
      _$SearchSongArtistDtoFromJson(json);
}

// Search artist dto -----------------------------------------------------------
@freezed
class SearchArtistDto with _$SearchArtistDto {
  const factory SearchArtistDto({
    required String id,
    required String name,
    required ImageDto image,
  }) = _SearchArtistDto;

  factory SearchArtistDto.fromJson(Map<String, Object?> json) =>
      _$SearchArtistDtoFromJson(json);
}

// Search playlist dto ---------------------------------------------------------
@freezed
class SearchPlaylistDto with _$SearchPlaylistDto {
  const factory SearchPlaylistDto({
    required String id,
    required ImageDto image,
    required String name,
  }) = _SearchPlaylistDto;

  factory SearchPlaylistDto.fromJson(Map<String, Object?> json) =>
      _$SearchPlaylistDtoFromJson(json);
}

// Search album dto ------------------------------------------------------------
@freezed
class SearchAlbumDto with _$SearchAlbumDto {
  const factory SearchAlbumDto({
    required String id,
    required ImageDto image,
    required String name,
  }) = _SearchAlbumDto;

  factory SearchAlbumDto.fromJson(Map<String, Object?> json) =>
      _$SearchAlbumDtoFromJson(json);
}
