// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trending_song_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TrendingSongsDtoImpl _$$TrendingSongsDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$TrendingSongsDtoImpl(
      songs: (json['songs'] as List<dynamic>)
          .map((e) => TrendingSongDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$TrendingSongsDtoImplToJson(
        _$TrendingSongsDtoImpl instance) =>
    <String, dynamic>{
      'songs': instance.songs,
    };

_$TrendingSongDtoImpl _$$TrendingSongDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$TrendingSongDtoImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      duration: json['duration'] as String,
      artists: (json['artists'] as List<dynamic>)
          .map((e) => TrendingSongArtistDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      image: ImageDto.fromJson(json['image'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$TrendingSongDtoImplToJson(
        _$TrendingSongDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'duration': instance.duration,
      'artists': instance.artists,
      'image': instance.image,
    };

_$TrendingSongArtistDtoImpl _$$TrendingSongArtistDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$TrendingSongArtistDtoImpl(
      id: json['id'] as String,
      name: json['name'] as String,
    );

Map<String, dynamic> _$$TrendingSongArtistDtoImplToJson(
        _$TrendingSongArtistDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };
