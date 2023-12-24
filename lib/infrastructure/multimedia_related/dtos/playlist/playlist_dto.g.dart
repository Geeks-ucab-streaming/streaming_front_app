// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'playlist_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PlaylistDtoImpl _$$PlaylistDtoImplFromJson(Map<String, dynamic> json) =>
    _$PlaylistDtoImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      image: ImageDto.fromJson(json['image'] as Map<String, dynamic>),
      duration: json['duration'] as String,
      reproductions: json['reproductions'] as int,
      tracks: (json['tracks'] as List<dynamic>)
          .map((e) => SongDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$PlaylistDtoImplToJson(_$PlaylistDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image': instance.image,
      'duration': instance.duration,
      'reproductions': instance.reproductions,
      'tracks': instance.tracks,
    };
