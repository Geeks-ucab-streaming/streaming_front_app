import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:streaming_front_app/infrastructure/core/dtos/dtos.dart';

part 'trending_song_dto.freezed.dart';

// Class is serializable
part 'trending_song_dto.g.dart';

@freezed
class TrendingSongsDto with _$TrendingSongsDto {
  const factory TrendingSongsDto({
    required List<TrendingSongDto> songs,
  }) = _TrendingSongsDto;

  factory TrendingSongsDto.fromJson(Map<String, Object?> json) =>
      _$TrendingSongsDtoFromJson(json);
}

@freezed
class TrendingSongDto with _$TrendingSongDto {
  const factory TrendingSongDto({
    required String songId,
    required String name,
    required String duration,
    required List<TrendingSongArtistDto> artists,
    required ImageDto image,
  }) = _TrendingSongDto;

  factory TrendingSongDto.fromJson(Map<String, Object?> json) =>
      _$TrendingSongDtoFromJson(json);
}

@freezed
class TrendingSongArtistDto with _$TrendingSongArtistDto {
  const factory TrendingSongArtistDto({
    required String id,
    required String name,
  }) = _TrendingSongArtistDto;

  factory TrendingSongArtistDto.fromJson(Map<String, Object?> json) =>
      _$TrendingSongArtistDtoFromJson(json);
}
