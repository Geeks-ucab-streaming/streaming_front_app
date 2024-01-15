// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trending_artists_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TrendingArtistsDtoImpl _$$TrendingArtistsDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$TrendingArtistsDtoImpl(
      artists: (json['artists'] as List<dynamic>)
          .map((e) => TrendingArtistDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$TrendingArtistsDtoImplToJson(
        _$TrendingArtistsDtoImpl instance) =>
    <String, dynamic>{
      'artists': instance.artists,
    };

_$TrendingArtistDtoImpl _$$TrendingArtistDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$TrendingArtistDtoImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      image: ImageDto.fromJson(json['image'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$TrendingArtistDtoImplToJson(
        _$TrendingArtistDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image': instance.image,
    };
