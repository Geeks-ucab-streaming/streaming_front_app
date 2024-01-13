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
  String get duration => throw _privateConstructorUsedError;
  ImageDto get image => throw _privateConstructorUsedError;
  int get streams => throw _privateConstructorUsedError;
  List<AlbumSongDto> get songs => throw _privateConstructorUsedError;
  List<AlbumCreatorDto> get creators => throw _privateConstructorUsedError;

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
      String duration,
      ImageDto image,
      int streams,
      List<AlbumSongDto> songs,
      List<AlbumCreatorDto> creators});

  $ImageDtoCopyWith<$Res> get image;
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
    Object? duration = null,
    Object? image = null,
    Object? streams = null,
    Object? songs = null,
    Object? creators = null,
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
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as ImageDto,
      streams: null == streams
          ? _value.streams
          : streams // ignore: cast_nullable_to_non_nullable
              as int,
      songs: null == songs
          ? _value.songs
          : songs // ignore: cast_nullable_to_non_nullable
              as List<AlbumSongDto>,
      creators: null == creators
          ? _value.creators
          : creators // ignore: cast_nullable_to_non_nullable
              as List<AlbumCreatorDto>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ImageDtoCopyWith<$Res> get image {
    return $ImageDtoCopyWith<$Res>(_value.image, (value) {
      return _then(_value.copyWith(image: value) as $Val);
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
      String duration,
      ImageDto image,
      int streams,
      List<AlbumSongDto> songs,
      List<AlbumCreatorDto> creators});

  @override
  $ImageDtoCopyWith<$Res> get image;
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
    Object? duration = null,
    Object? image = null,
    Object? streams = null,
    Object? songs = null,
    Object? creators = null,
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
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as ImageDto,
      streams: null == streams
          ? _value.streams
          : streams // ignore: cast_nullable_to_non_nullable
              as int,
      songs: null == songs
          ? _value._songs
          : songs // ignore: cast_nullable_to_non_nullable
              as List<AlbumSongDto>,
      creators: null == creators
          ? _value._creators
          : creators // ignore: cast_nullable_to_non_nullable
              as List<AlbumCreatorDto>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AlbumDtoImpl with DiagnosticableTreeMixin implements _AlbumDto {
  const _$AlbumDtoImpl(
      {required this.id,
      required this.name,
      required this.duration,
      required this.image,
      required this.streams,
      required final List<AlbumSongDto> songs,
      required final List<AlbumCreatorDto> creators})
      : _songs = songs,
        _creators = creators;

  factory _$AlbumDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$AlbumDtoImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String duration;
  @override
  final ImageDto image;
  @override
  final int streams;
  final List<AlbumSongDto> _songs;
  @override
  List<AlbumSongDto> get songs {
    if (_songs is EqualUnmodifiableListView) return _songs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_songs);
  }

  final List<AlbumCreatorDto> _creators;
  @override
  List<AlbumCreatorDto> get creators {
    if (_creators is EqualUnmodifiableListView) return _creators;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_creators);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AlbumDto(id: $id, name: $name, duration: $duration, image: $image, streams: $streams, songs: $songs, creators: $creators)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AlbumDto'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('duration', duration))
      ..add(DiagnosticsProperty('image', image))
      ..add(DiagnosticsProperty('streams', streams))
      ..add(DiagnosticsProperty('songs', songs))
      ..add(DiagnosticsProperty('creators', creators));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AlbumDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.streams, streams) || other.streams == streams) &&
            const DeepCollectionEquality().equals(other._songs, _songs) &&
            const DeepCollectionEquality().equals(other._creators, _creators));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      duration,
      image,
      streams,
      const DeepCollectionEquality().hash(_songs),
      const DeepCollectionEquality().hash(_creators));

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
      required final String duration,
      required final ImageDto image,
      required final int streams,
      required final List<AlbumSongDto> songs,
      required final List<AlbumCreatorDto> creators}) = _$AlbumDtoImpl;

  factory _AlbumDto.fromJson(Map<String, dynamic> json) =
      _$AlbumDtoImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get duration;
  @override
  ImageDto get image;
  @override
  int get streams;
  @override
  List<AlbumSongDto> get songs;
  @override
  List<AlbumCreatorDto> get creators;
  @override
  @JsonKey(ignore: true)
  _$$AlbumDtoImplCopyWith<_$AlbumDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AlbumCreatorDto _$AlbumCreatorDtoFromJson(Map<String, dynamic> json) {
  return _AlbumCreatorDto.fromJson(json);
}

/// @nodoc
mixin _$AlbumCreatorDto {
  String get creatorId => throw _privateConstructorUsedError;
  String get creatorName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AlbumCreatorDtoCopyWith<AlbumCreatorDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AlbumCreatorDtoCopyWith<$Res> {
  factory $AlbumCreatorDtoCopyWith(
          AlbumCreatorDto value, $Res Function(AlbumCreatorDto) then) =
      _$AlbumCreatorDtoCopyWithImpl<$Res, AlbumCreatorDto>;
  @useResult
  $Res call({String creatorId, String creatorName});
}

/// @nodoc
class _$AlbumCreatorDtoCopyWithImpl<$Res, $Val extends AlbumCreatorDto>
    implements $AlbumCreatorDtoCopyWith<$Res> {
  _$AlbumCreatorDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? creatorId = null,
    Object? creatorName = null,
  }) {
    return _then(_value.copyWith(
      creatorId: null == creatorId
          ? _value.creatorId
          : creatorId // ignore: cast_nullable_to_non_nullable
              as String,
      creatorName: null == creatorName
          ? _value.creatorName
          : creatorName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AlbumCreatorDtoImplCopyWith<$Res>
    implements $AlbumCreatorDtoCopyWith<$Res> {
  factory _$$AlbumCreatorDtoImplCopyWith(_$AlbumCreatorDtoImpl value,
          $Res Function(_$AlbumCreatorDtoImpl) then) =
      __$$AlbumCreatorDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String creatorId, String creatorName});
}

/// @nodoc
class __$$AlbumCreatorDtoImplCopyWithImpl<$Res>
    extends _$AlbumCreatorDtoCopyWithImpl<$Res, _$AlbumCreatorDtoImpl>
    implements _$$AlbumCreatorDtoImplCopyWith<$Res> {
  __$$AlbumCreatorDtoImplCopyWithImpl(
      _$AlbumCreatorDtoImpl _value, $Res Function(_$AlbumCreatorDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? creatorId = null,
    Object? creatorName = null,
  }) {
    return _then(_$AlbumCreatorDtoImpl(
      creatorId: null == creatorId
          ? _value.creatorId
          : creatorId // ignore: cast_nullable_to_non_nullable
              as String,
      creatorName: null == creatorName
          ? _value.creatorName
          : creatorName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AlbumCreatorDtoImpl
    with DiagnosticableTreeMixin
    implements _AlbumCreatorDto {
  const _$AlbumCreatorDtoImpl(
      {required this.creatorId, required this.creatorName});

  factory _$AlbumCreatorDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$AlbumCreatorDtoImplFromJson(json);

  @override
  final String creatorId;
  @override
  final String creatorName;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AlbumCreatorDto(creatorId: $creatorId, creatorName: $creatorName)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AlbumCreatorDto'))
      ..add(DiagnosticsProperty('creatorId', creatorId))
      ..add(DiagnosticsProperty('creatorName', creatorName));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AlbumCreatorDtoImpl &&
            (identical(other.creatorId, creatorId) ||
                other.creatorId == creatorId) &&
            (identical(other.creatorName, creatorName) ||
                other.creatorName == creatorName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, creatorId, creatorName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AlbumCreatorDtoImplCopyWith<_$AlbumCreatorDtoImpl> get copyWith =>
      __$$AlbumCreatorDtoImplCopyWithImpl<_$AlbumCreatorDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AlbumCreatorDtoImplToJson(
      this,
    );
  }
}

abstract class _AlbumCreatorDto implements AlbumCreatorDto {
  const factory _AlbumCreatorDto(
      {required final String creatorId,
      required final String creatorName}) = _$AlbumCreatorDtoImpl;

  factory _AlbumCreatorDto.fromJson(Map<String, dynamic> json) =
      _$AlbumCreatorDtoImpl.fromJson;

  @override
  String get creatorId;
  @override
  String get creatorName;
  @override
  @JsonKey(ignore: true)
  _$$AlbumCreatorDtoImplCopyWith<_$AlbumCreatorDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AlbumSongDto _$AlbumSongDtoFromJson(Map<String, dynamic> json) {
  return _AlbumSongDto.fromJson(json);
}

/// @nodoc
mixin _$AlbumSongDto {
  String get songId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get duration => throw _privateConstructorUsedError;
  ImageDto get image => throw _privateConstructorUsedError;
  List<AlbumSongArtistDto> get artists => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AlbumSongDtoCopyWith<AlbumSongDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AlbumSongDtoCopyWith<$Res> {
  factory $AlbumSongDtoCopyWith(
          AlbumSongDto value, $Res Function(AlbumSongDto) then) =
      _$AlbumSongDtoCopyWithImpl<$Res, AlbumSongDto>;
  @useResult
  $Res call(
      {String songId,
      String name,
      String duration,
      ImageDto image,
      List<AlbumSongArtistDto> artists});

  $ImageDtoCopyWith<$Res> get image;
}

/// @nodoc
class _$AlbumSongDtoCopyWithImpl<$Res, $Val extends AlbumSongDto>
    implements $AlbumSongDtoCopyWith<$Res> {
  _$AlbumSongDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? songId = null,
    Object? name = null,
    Object? duration = null,
    Object? image = null,
    Object? artists = null,
  }) {
    return _then(_value.copyWith(
      songId: null == songId
          ? _value.songId
          : songId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as ImageDto,
      artists: null == artists
          ? _value.artists
          : artists // ignore: cast_nullable_to_non_nullable
              as List<AlbumSongArtistDto>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ImageDtoCopyWith<$Res> get image {
    return $ImageDtoCopyWith<$Res>(_value.image, (value) {
      return _then(_value.copyWith(image: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AlbumSongDtoImplCopyWith<$Res>
    implements $AlbumSongDtoCopyWith<$Res> {
  factory _$$AlbumSongDtoImplCopyWith(
          _$AlbumSongDtoImpl value, $Res Function(_$AlbumSongDtoImpl) then) =
      __$$AlbumSongDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String songId,
      String name,
      String duration,
      ImageDto image,
      List<AlbumSongArtistDto> artists});

  @override
  $ImageDtoCopyWith<$Res> get image;
}

/// @nodoc
class __$$AlbumSongDtoImplCopyWithImpl<$Res>
    extends _$AlbumSongDtoCopyWithImpl<$Res, _$AlbumSongDtoImpl>
    implements _$$AlbumSongDtoImplCopyWith<$Res> {
  __$$AlbumSongDtoImplCopyWithImpl(
      _$AlbumSongDtoImpl _value, $Res Function(_$AlbumSongDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? songId = null,
    Object? name = null,
    Object? duration = null,
    Object? image = null,
    Object? artists = null,
  }) {
    return _then(_$AlbumSongDtoImpl(
      songId: null == songId
          ? _value.songId
          : songId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as ImageDto,
      artists: null == artists
          ? _value._artists
          : artists // ignore: cast_nullable_to_non_nullable
              as List<AlbumSongArtistDto>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AlbumSongDtoImpl with DiagnosticableTreeMixin implements _AlbumSongDto {
  const _$AlbumSongDtoImpl(
      {required this.songId,
      required this.name,
      required this.duration,
      required this.image,
      required final List<AlbumSongArtistDto> artists})
      : _artists = artists;

  factory _$AlbumSongDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$AlbumSongDtoImplFromJson(json);

  @override
  final String songId;
  @override
  final String name;
  @override
  final String duration;
  @override
  final ImageDto image;
  final List<AlbumSongArtistDto> _artists;
  @override
  List<AlbumSongArtistDto> get artists {
    if (_artists is EqualUnmodifiableListView) return _artists;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_artists);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AlbumSongDto(songId: $songId, name: $name, duration: $duration, image: $image, artists: $artists)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AlbumSongDto'))
      ..add(DiagnosticsProperty('songId', songId))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('duration', duration))
      ..add(DiagnosticsProperty('image', image))
      ..add(DiagnosticsProperty('artists', artists));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AlbumSongDtoImpl &&
            (identical(other.songId, songId) || other.songId == songId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.image, image) || other.image == image) &&
            const DeepCollectionEquality().equals(other._artists, _artists));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, songId, name, duration, image,
      const DeepCollectionEquality().hash(_artists));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AlbumSongDtoImplCopyWith<_$AlbumSongDtoImpl> get copyWith =>
      __$$AlbumSongDtoImplCopyWithImpl<_$AlbumSongDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AlbumSongDtoImplToJson(
      this,
    );
  }
}

abstract class _AlbumSongDto implements AlbumSongDto {
  const factory _AlbumSongDto(
      {required final String songId,
      required final String name,
      required final String duration,
      required final ImageDto image,
      required final List<AlbumSongArtistDto> artists}) = _$AlbumSongDtoImpl;

  factory _AlbumSongDto.fromJson(Map<String, dynamic> json) =
      _$AlbumSongDtoImpl.fromJson;

  @override
  String get songId;
  @override
  String get name;
  @override
  String get duration;
  @override
  ImageDto get image;
  @override
  List<AlbumSongArtistDto> get artists;
  @override
  @JsonKey(ignore: true)
  _$$AlbumSongDtoImplCopyWith<_$AlbumSongDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AlbumSongArtistDto _$AlbumSongArtistDtoFromJson(Map<String, dynamic> json) {
  return _AlbumSongArtistDto.fromJson(json);
}

/// @nodoc
mixin _$AlbumSongArtistDto {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AlbumSongArtistDtoCopyWith<AlbumSongArtistDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AlbumSongArtistDtoCopyWith<$Res> {
  factory $AlbumSongArtistDtoCopyWith(
          AlbumSongArtistDto value, $Res Function(AlbumSongArtistDto) then) =
      _$AlbumSongArtistDtoCopyWithImpl<$Res, AlbumSongArtistDto>;
  @useResult
  $Res call({String id, String name});
}

/// @nodoc
class _$AlbumSongArtistDtoCopyWithImpl<$Res, $Val extends AlbumSongArtistDto>
    implements $AlbumSongArtistDtoCopyWith<$Res> {
  _$AlbumSongArtistDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AlbumSongArtistDtoImplCopyWith<$Res>
    implements $AlbumSongArtistDtoCopyWith<$Res> {
  factory _$$AlbumSongArtistDtoImplCopyWith(_$AlbumSongArtistDtoImpl value,
          $Res Function(_$AlbumSongArtistDtoImpl) then) =
      __$$AlbumSongArtistDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name});
}

/// @nodoc
class __$$AlbumSongArtistDtoImplCopyWithImpl<$Res>
    extends _$AlbumSongArtistDtoCopyWithImpl<$Res, _$AlbumSongArtistDtoImpl>
    implements _$$AlbumSongArtistDtoImplCopyWith<$Res> {
  __$$AlbumSongArtistDtoImplCopyWithImpl(_$AlbumSongArtistDtoImpl _value,
      $Res Function(_$AlbumSongArtistDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$AlbumSongArtistDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AlbumSongArtistDtoImpl
    with DiagnosticableTreeMixin
    implements _AlbumSongArtistDto {
  const _$AlbumSongArtistDtoImpl({required this.id, required this.name});

  factory _$AlbumSongArtistDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$AlbumSongArtistDtoImplFromJson(json);

  @override
  final String id;
  @override
  final String name;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AlbumSongArtistDto(id: $id, name: $name)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AlbumSongArtistDto'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AlbumSongArtistDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AlbumSongArtistDtoImplCopyWith<_$AlbumSongArtistDtoImpl> get copyWith =>
      __$$AlbumSongArtistDtoImplCopyWithImpl<_$AlbumSongArtistDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AlbumSongArtistDtoImplToJson(
      this,
    );
  }
}

abstract class _AlbumSongArtistDto implements AlbumSongArtistDto {
  const factory _AlbumSongArtistDto(
      {required final String id,
      required final String name}) = _$AlbumSongArtistDtoImpl;

  factory _AlbumSongArtistDto.fromJson(Map<String, dynamic> json) =
      _$AlbumSongArtistDtoImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$AlbumSongArtistDtoImplCopyWith<_$AlbumSongArtistDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
