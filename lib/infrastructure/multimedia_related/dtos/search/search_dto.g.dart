// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SearchDtoImpl _$$SearchDtoImplFromJson(Map<String, dynamic> json) =>
    _$SearchDtoImpl(
      songs: (json['songs'] as List<dynamic>)
          .map((e) => SearchSongDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      artist: (json['artist'] as List<dynamic>)
          .map((e) => SearchArtistDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      playlists: (json['playlists'] as List<dynamic>)
          .map((e) => SearchPlaylistDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      albums: (json['albums'] as List<dynamic>)
          .map((e) => SearchAlbumDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$SearchDtoImplToJson(_$SearchDtoImpl instance) =>
    <String, dynamic>{
      'songs': instance.songs,
      'artist': instance.artist,
      'playlists': instance.playlists,
      'albums': instance.albums,
    };

_$SearchSongDtoImpl _$$SearchSongDtoImplFromJson(Map<String, dynamic> json) =>
    _$SearchSongDtoImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      duration: json['duration'] as String,
      artists: (json['artists'] as List<dynamic>)
          .map((e) => SearchSongArtistDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      image: ImageDto.fromJson(json['image'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SearchSongDtoImplToJson(_$SearchSongDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'duration': instance.duration,
      'artists': instance.artists,
      'image': instance.image,
    };

_$SearchSongArtistDtoImpl _$$SearchSongArtistDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$SearchSongArtistDtoImpl(
      id: json['id'] as String,
      name: json['name'] as String,
    );

Map<String, dynamic> _$$SearchSongArtistDtoImplToJson(
        _$SearchSongArtistDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

_$SearchArtistDtoImpl _$$SearchArtistDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$SearchArtistDtoImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      image: ImageDto.fromJson(json['image'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SearchArtistDtoImplToJson(
        _$SearchArtistDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image': instance.image,
    };

_$SearchPlaylistDtoImpl _$$SearchPlaylistDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$SearchPlaylistDtoImpl(
      id: json['id'] as String,
      image: ImageDto.fromJson(json['image'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SearchPlaylistDtoImplToJson(
        _$SearchPlaylistDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'image': instance.image,
    };

_$SearchAlbumDtoImpl _$$SearchAlbumDtoImplFromJson(Map<String, dynamic> json) =>
    _$SearchAlbumDtoImpl(
      id: json['id'] as String,
      image: ImageDto.fromJson(json['image'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SearchAlbumDtoImplToJson(
        _$SearchAlbumDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'image': instance.image,
    };