import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/dtos/dtos.dart';

part 'trending_artists_dto.freezed.dart';
// Class is serializable
part 'trending_artists_dto.g.dart';

@freezed
class TrendingArtistsDto with _$TrendingArtistsDto {
  const factory TrendingArtistsDto({
    required List<TrendingArtistDto> artists,
  }) = _TrendingArtistsDto;

  factory TrendingArtistsDto.fromJson(Map<String, Object?> json) =>
      _$TrendingArtistsDtoFromJson(json);
}

@freezed
class TrendingArtistDto with _$TrendingArtistDto {
  const factory TrendingArtistDto({
    required String id,
    required String name,
    required ImageDto image,
  }) = _TrendingArtistDto;

  factory TrendingArtistDto.fromJson(Map<String, Object?> json) =>
      _$TrendingArtistDtoFromJson(json);
}
