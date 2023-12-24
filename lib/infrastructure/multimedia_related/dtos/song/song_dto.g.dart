// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'song_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SongDtoImpl _$$SongDtoImplFromJson(Map<String, dynamic> json) =>
    _$SongDtoImpl(
      songId: json['songId'] as String,
      name: json['name'] as String,
      duration: json['duration'] as String,
      compositor: json['compositor'] as String,
      imageURL: json['imageURL'] as String,
    );

Map<String, dynamic> _$$SongDtoImplToJson(_$SongDtoImpl instance) =>
    <String, dynamic>{
      'songId': instance.songId,
      'name': instance.name,
      'duration': instance.duration,
      'compositor': instance.compositor,
      'imageURL': instance.imageURL,
    };
