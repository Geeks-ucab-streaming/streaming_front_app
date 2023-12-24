// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'album_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AlbumDtoImpl _$$AlbumDtoImplFromJson(Map<String, dynamic> json) =>
    _$AlbumDtoImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      compositor: json['compositor'] as String,
      imageURL: json['imageURL'] as String,
      tracks: (json['tracks'] as List<dynamic>)
          .map((e) => SongDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      artist: ArtistDto.fromJson(json['artist'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AlbumDtoImplToJson(_$AlbumDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'compositor': instance.compositor,
      'imageURL': instance.imageURL,
      'tracks': instance.tracks,
      'artist': instance.artist,
    };
