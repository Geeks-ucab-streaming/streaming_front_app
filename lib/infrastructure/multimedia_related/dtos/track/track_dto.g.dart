// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'track_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TrackDtoImpl _$$TrackDtoImplFromJson(Map<String, dynamic> json) =>
    _$TrackDtoImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      compositor: json['compositor'] as String,
      imageURL: json['imageURL'] as String,
      duration: (json['duration'] as num).toDouble(),
    );

Map<String, dynamic> _$$TrackDtoImplToJson(_$TrackDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'compositor': instance.compositor,
      'imageURL': instance.imageURL,
      'duration': instance.duration,
    };
