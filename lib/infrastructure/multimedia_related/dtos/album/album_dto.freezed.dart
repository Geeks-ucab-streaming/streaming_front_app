// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'album_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AlbumDto _$AlbumDtoFromJson(Map<String, dynamic> json) {
  return _AlbumDto.fromJson(json);
}

/// @nodoc
mixin _$AlbumDto {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get compositor =>
      throw _privateConstructorUsedError; // THIS NEEDS TO BE CHANGED
  String get imageURL => throw _privateConstructorUsedError;
  List<SongDto> get tracks => throw _privateConstructorUsedError;
  ArtistDto get artist => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AlbumDtoCopyWith<AlbumDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AlbumDtoCopyWith<$Res> {
  factory $AlbumDtoCopyWith(AlbumDto value, $Res Function(AlbumDto) then) =
      _$AlbumDtoCopyWithImpl<$Res, AlbumDto>;
  @useResult
  $Res call(
      {String id,
      String name,
      String compositor,
      String imageURL,
      List<SongDto> tracks,
      ArtistDto artist});

  $ArtistDtoCopyWith<$Res> get artist;
}

/// @nodoc
class _$AlbumDtoCopyWithImpl<$Res, $Val extends AlbumDto>
    implements $AlbumDtoCopyWith<$Res> {
  _$AlbumDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? compositor = null,
    Object? imageURL = null,
    Object? tracks = null,
    Object? artist = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      compositor: null == compositor
          ? _value.compositor
          : compositor // ignore: cast_nullable_to_non_nullable
              as String,
      imageURL: null == imageURL
          ? _value.imageURL
          : imageURL // ignore: cast_nullable_to_non_nullable
              as String,
      tracks: null == tracks
          ? _value.tracks
          : tracks // ignore: cast_nullable_to_non_nullable
              as List<SongDto>,
      artist: null == artist
          ? _value.artist
          : artist // ignore: cast_nullable_to_non_nullable
              as ArtistDto,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ArtistDtoCopyWith<$Res> get artist {
    return $ArtistDtoCopyWith<$Res>(_value.artist, (value) {
      return _then(_value.copyWith(artist: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AlbumDtoImplCopyWith<$Res>
    implements $AlbumDtoCopyWith<$Res> {
  factory _$$AlbumDtoImplCopyWith(
          _$AlbumDtoImpl value, $Res Function(_$AlbumDtoImpl) then) =
      __$$AlbumDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String compositor,
      String imageURL,
      List<SongDto> tracks,
      ArtistDto artist});

  @override
  $ArtistDtoCopyWith<$Res> get artist;
}

/// @nodoc
class __$$AlbumDtoImplCopyWithImpl<$Res>
    extends _$AlbumDtoCopyWithImpl<$Res, _$AlbumDtoImpl>
    implements _$$AlbumDtoImplCopyWith<$Res> {
  __$$AlbumDtoImplCopyWithImpl(
      _$AlbumDtoImpl _value, $Res Function(_$AlbumDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? compositor = null,
    Object? imageURL = null,
    Object? tracks = null,
    Object? artist = null,
  }) {
    return _then(_$AlbumDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      compositor: null == compositor
          ? _value.compositor
          : compositor // ignore: cast_nullable_to_non_nullable
              as String,
      imageURL: null == imageURL
          ? _value.imageURL
          : imageURL // ignore: cast_nullable_to_non_nullable
              as String,
      tracks: null == tracks
          ? _value._tracks
          : tracks // ignore: cast_nullable_to_non_nullable
              as List<SongDto>,
      artist: null == artist
          ? _value.artist
          : artist // ignore: cast_nullable_to_non_nullable
              as ArtistDto,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AlbumDtoImpl with DiagnosticableTreeMixin implements _AlbumDto {
  const _$AlbumDtoImpl(
      {required this.id,
      required this.name,
      required this.compositor,
      required this.imageURL,
      required final List<SongDto> tracks,
      required this.artist})
      : _tracks = tracks;

  factory _$AlbumDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$AlbumDtoImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String compositor;
// THIS NEEDS TO BE CHANGED
  @override
  final String imageURL;
  final List<SongDto> _tracks;
  @override
  List<SongDto> get tracks {
    if (_tracks is EqualUnmodifiableListView) return _tracks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tracks);
  }

  @override
  final ArtistDto artist;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AlbumDto(id: $id, name: $name, compositor: $compositor, imageURL: $imageURL, tracks: $tracks, artist: $artist)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AlbumDto'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('compositor', compositor))
      ..add(DiagnosticsProperty('imageURL', imageURL))
      ..add(DiagnosticsProperty('tracks', tracks))
      ..add(DiagnosticsProperty('artist', artist));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AlbumDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.compositor, compositor) ||
                other.compositor == compositor) &&
            (identical(other.imageURL, imageURL) ||
                other.imageURL == imageURL) &&
            const DeepCollectionEquality().equals(other._tracks, _tracks) &&
            (identical(other.artist, artist) || other.artist == artist));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, compositor, imageURL,
      const DeepCollectionEquality().hash(_tracks), artist);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AlbumDtoImplCopyWith<_$AlbumDtoImpl> get copyWith =>
      __$$AlbumDtoImplCopyWithImpl<_$AlbumDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AlbumDtoImplToJson(
      this,
    );
  }
}

abstract class _AlbumDto implements AlbumDto {
  const factory _AlbumDto(
      {required final String id,
      required final String name,
      required final String compositor,
      required final String imageURL,
      required final List<SongDto> tracks,
      required final ArtistDto artist}) = _$AlbumDtoImpl;

  factory _AlbumDto.fromJson(Map<String, dynamic> json) =
      _$AlbumDtoImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get compositor;
  @override // THIS NEEDS TO BE CHANGED
  String get imageURL;
  @override
  List<SongDto> get tracks;
  @override
  ArtistDto get artist;
  @override
  @JsonKey(ignore: true)
  _$$AlbumDtoImplCopyWith<_$AlbumDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
