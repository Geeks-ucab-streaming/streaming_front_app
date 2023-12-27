// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'top_playlist_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TopPlaylistsDtoImpl _$$TopPlaylistsDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$TopPlaylistsDtoImpl(
      playlists: (json['playlists'] as List<dynamic>)
          .map((e) => TopPlaylistDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$TopPlaylistsDtoImplToJson(
        _$TopPlaylistsDtoImpl instance) =>
    <String, dynamic>{
      'playlists': instance.playlists,
    };

_$TopPlaylistDtoImpl _$$TopPlaylistDtoImplFromJson(Map<String, dynamic> json) =>
    _$TopPlaylistDtoImpl(
      id: json['id'] as String,
      image: json['image'] as List<dynamic>,
    );

Map<String, dynamic> _$$TopPlaylistDtoImplToJson(
        _$TopPlaylistDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'image': instance.image,
    };
