// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'album_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AlbumDtoImpl _$$AlbumDtoImplFromJson(Map<String, dynamic> json) =>
    _$AlbumDtoImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      duration: json['duration'] as String,
      image: ImageDto.fromJson(json['image'] as Map<String, dynamic>),
      streams: json['streams'] as int,
      songs: (json['songs'] as List<dynamic>)
          .map((e) => AlbumSongDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      creators: (json['creators'] as List<dynamic>)
          .map((e) => AlbumCreatorDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$AlbumDtoImplToJson(_$AlbumDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'duration': instance.duration,
      'image': instance.image,
      'streams': instance.streams,
      'songs': instance.songs,
      'creators': instance.creators,
    };

_$AlbumCreatorDtoImpl _$$AlbumCreatorDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$AlbumCreatorDtoImpl(
      creatorId: json['creatorId'] as String,
      creatorName: json['creatorName'] as String,
    );

Map<String, dynamic> _$$AlbumCreatorDtoImplToJson(
        _$AlbumCreatorDtoImpl instance) =>
    <String, dynamic>{
      'creatorId': instance.creatorId,
      'creatorName': instance.creatorName,
    };

_$AlbumSongDtoImpl _$$AlbumSongDtoImplFromJson(Map<String, dynamic> json) =>
    _$AlbumSongDtoImpl(
      songId: json['songId'] as String,
      name: json['name'] as String,
      duration: json['duration'] as String,
      image: ImageDto.fromJson(json['image'] as Map<String, dynamic>),
      artists: (json['artists'] as List<dynamic>)
          .map((e) => AlbumSongArtistDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$AlbumSongDtoImplToJson(_$AlbumSongDtoImpl instance) =>
    <String, dynamic>{
      'songId': instance.songId,
      'name': instance.name,
      'duration': instance.duration,
      'image': instance.image,
      'artists': instance.artists,
    };

_$AlbumSongArtistDtoImpl _$$AlbumSongArtistDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$AlbumSongArtistDtoImpl(
      id: json['id'] as String,
      name: json['name'] as String,
    );

Map<String, dynamic> _$$AlbumSongArtistDtoImplToJson(
        _$AlbumSongArtistDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };
