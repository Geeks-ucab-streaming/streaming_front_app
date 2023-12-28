// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'top_album_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TopAlbumsDtoImpl _$$TopAlbumsDtoImplFromJson(Map<String, dynamic> json) =>
    _$TopAlbumsDtoImpl(
      playlists: (json['playlists'] as List<dynamic>)
          .map((e) => TopAlbumDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$TopAlbumsDtoImplToJson(_$TopAlbumsDtoImpl instance) =>
    <String, dynamic>{
      'playlists': instance.playlists,
    };

_$TopAlbumDtoImpl _$$TopAlbumDtoImplFromJson(Map<String, dynamic> json) =>
    _$TopAlbumDtoImpl(
      id: json['id'] as String,
      image: json['image'] as List<dynamic>,
    );

Map<String, dynamic> _$$TopAlbumDtoImplToJson(_$TopAlbumDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'image': instance.image,
    };
