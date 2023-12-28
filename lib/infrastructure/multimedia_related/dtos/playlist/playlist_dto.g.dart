// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'playlist_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PlaylistDtoImpl _$$PlaylistDtoImplFromJson(Map<String, dynamic> json) =>
    _$PlaylistDtoImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      duration: json['duration'] as String,
      image: json['image'] as List<dynamic>,
      creators: (json['creators'] as List<dynamic>)
          .map((e) => PlaylistCreatorDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      songs: (json['songs'] as List<dynamic>)
          .map((e) => PlaylistSongDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$PlaylistDtoImplToJson(_$PlaylistDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'duration': instance.duration,
      'image': instance.image,
      'creators': instance.creators,
      'songs': instance.songs,
    };

_$PlaylistCreatorDtoImpl _$$PlaylistCreatorDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$PlaylistCreatorDtoImpl(
      creatorId: json['creatorId'] as String,
      creatorName: json['creatorName'] as String,
    );

Map<String, dynamic> _$$PlaylistCreatorDtoImplToJson(
        _$PlaylistCreatorDtoImpl instance) =>
    <String, dynamic>{
      'creatorId': instance.creatorId,
      'creatorName': instance.creatorName,
    };

_$PlaylistSongDtoImpl _$$PlaylistSongDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$PlaylistSongDtoImpl(
      songId: json['songId'] as String,
      name: json['name'] as String,
      duration: json['duration'] as String,
      image: json['image'] as List<dynamic>,
      artists: (json['artists'] as List<dynamic>)
          .map((e) => PlaylistSongArtistDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$PlaylistSongDtoImplToJson(
        _$PlaylistSongDtoImpl instance) =>
    <String, dynamic>{
      'songId': instance.songId,
      'name': instance.name,
      'duration': instance.duration,
      'image': instance.image,
      'artists': instance.artists,
    };

_$PlaylistSongArtistDtoImpl _$$PlaylistSongArtistDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$PlaylistSongArtistDtoImpl(
      id: json['id'] as String,
      name: json['name'] as String,
    );

Map<String, dynamic> _$$PlaylistSongArtistDtoImplToJson(
        _$PlaylistSongArtistDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };
