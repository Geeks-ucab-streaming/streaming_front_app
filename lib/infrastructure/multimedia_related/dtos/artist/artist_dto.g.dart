// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'artist_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ArtistDtoImpl _$$ArtistDtoImplFromJson(Map<String, dynamic> json) =>
    _$ArtistDtoImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      image: ImageDto.fromJson(json['image'] as Map<String, dynamic>),
      albums: (json['albums'] as List<dynamic>)
          .map((e) => ArtistAlbumDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      songs: (json['songs'] as List<dynamic>)
          .map((e) => ArtistSongDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ArtistDtoImplToJson(_$ArtistDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image': instance.image,
      'albums': instance.albums,
      'songs': instance.songs,
    };

_$ArtistAlbumDtoImpl _$$ArtistAlbumDtoImplFromJson(Map<String, dynamic> json) =>
    _$ArtistAlbumDtoImpl(
      id: json['id'] as String,
      image: ImageDto.fromJson(json['image'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ArtistAlbumDtoImplToJson(
        _$ArtistAlbumDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'image': instance.image,
    };

_$ArtistSongDtoImpl _$$ArtistSongDtoImplFromJson(Map<String, dynamic> json) =>
    _$ArtistSongDtoImpl(
      id: json['id'] as String,
      duration: json['duration'] as String,
      image: ImageDto.fromJson(json['image'] as Map<String, dynamic>),
      artists: (json['artists'] as List<dynamic>)
          .map((e) => ArtistSongArtistDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ArtistSongDtoImplToJson(_$ArtistSongDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'duration': instance.duration,
      'image': instance.image,
      'artists': instance.artists,
    };

_$ArtistSongArtistDtoImpl _$$ArtistSongArtistDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$ArtistSongArtistDtoImpl(
      id: json['id'] as String,
      name: json['name'] as String,
    );

Map<String, dynamic> _$$ArtistSongArtistDtoImplToJson(
        _$ArtistSongArtistDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };
