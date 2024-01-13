// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'playlist_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PlaylistDto _$PlaylistDtoFromJson(Map<String, dynamic> json) {
  return _PlaylistDto.fromJson(json);
}

/// @nodoc
mixin _$PlaylistDto {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get duration => throw _privateConstructorUsedError;
  ImageDto get image => throw _privateConstructorUsedError;
  int get streams => throw _privateConstructorUsedError;
  List<PlaylistCreatorDto> get creators => throw _privateConstructorUsedError;
  List<PlaylistSongDto> get songs => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlaylistDtoCopyWith<PlaylistDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaylistDtoCopyWith<$Res> {
  factory $PlaylistDtoCopyWith(
          PlaylistDto value, $Res Function(PlaylistDto) then) =
      _$PlaylistDtoCopyWithImpl<$Res, PlaylistDto>;
  @useResult
  $Res call(
      {String id,
      String name,
      String duration,
      ImageDto image,
      int streams,
      List<PlaylistCreatorDto> creators,
      List<PlaylistSongDto> songs});

  $ImageDtoCopyWith<$Res> get image;
}

/// @nodoc
class _$PlaylistDtoCopyWithImpl<$Res, $Val extends PlaylistDto>
    implements $PlaylistDtoCopyWith<$Res> {
  _$PlaylistDtoCopyWithImpl(this._value, this._then);

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
    Object? creators = null,
    Object? songs = null,
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
      creators: null == creators
          ? _value.creators
          : creators // ignore: cast_nullable_to_non_nullable
              as List<PlaylistCreatorDto>,
      songs: null == songs
          ? _value.songs
          : songs // ignore: cast_nullable_to_non_nullable
              as List<PlaylistSongDto>,
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
abstract class _$$PlaylistDtoImplCopyWith<$Res>
    implements $PlaylistDtoCopyWith<$Res> {
  factory _$$PlaylistDtoImplCopyWith(
          _$PlaylistDtoImpl value, $Res Function(_$PlaylistDtoImpl) then) =
      __$$PlaylistDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String duration,
      ImageDto image,
      int streams,
      List<PlaylistCreatorDto> creators,
      List<PlaylistSongDto> songs});

  @override
  $ImageDtoCopyWith<$Res> get image;
}

/// @nodoc
class __$$PlaylistDtoImplCopyWithImpl<$Res>
    extends _$PlaylistDtoCopyWithImpl<$Res, _$PlaylistDtoImpl>
    implements _$$PlaylistDtoImplCopyWith<$Res> {
  __$$PlaylistDtoImplCopyWithImpl(
      _$PlaylistDtoImpl _value, $Res Function(_$PlaylistDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? duration = null,
    Object? image = null,
    Object? streams = null,
    Object? creators = null,
    Object? songs = null,
  }) {
    return _then(_$PlaylistDtoImpl(
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
      creators: null == creators
          ? _value._creators
          : creators // ignore: cast_nullable_to_non_nullable
              as List<PlaylistCreatorDto>,
      songs: null == songs
          ? _value._songs
          : songs // ignore: cast_nullable_to_non_nullable
              as List<PlaylistSongDto>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PlaylistDtoImpl with DiagnosticableTreeMixin implements _PlaylistDto {
  const _$PlaylistDtoImpl(
      {required this.id,
      required this.name,
      required this.duration,
      required this.image,
      required this.streams,
      required final List<PlaylistCreatorDto> creators,
      required final List<PlaylistSongDto> songs})
      : _creators = creators,
        _songs = songs;

  factory _$PlaylistDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$PlaylistDtoImplFromJson(json);

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
  final List<PlaylistCreatorDto> _creators;
  @override
  List<PlaylistCreatorDto> get creators {
    if (_creators is EqualUnmodifiableListView) return _creators;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_creators);
  }

  final List<PlaylistSongDto> _songs;
  @override
  List<PlaylistSongDto> get songs {
    if (_songs is EqualUnmodifiableListView) return _songs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_songs);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PlaylistDto(id: $id, name: $name, duration: $duration, image: $image, streams: $streams, creators: $creators, songs: $songs)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PlaylistDto'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('duration', duration))
      ..add(DiagnosticsProperty('image', image))
      ..add(DiagnosticsProperty('streams', streams))
      ..add(DiagnosticsProperty('creators', creators))
      ..add(DiagnosticsProperty('songs', songs));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlaylistDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.streams, streams) || other.streams == streams) &&
            const DeepCollectionEquality().equals(other._creators, _creators) &&
            const DeepCollectionEquality().equals(other._songs, _songs));
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
      const DeepCollectionEquality().hash(_creators),
      const DeepCollectionEquality().hash(_songs));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PlaylistDtoImplCopyWith<_$PlaylistDtoImpl> get copyWith =>
      __$$PlaylistDtoImplCopyWithImpl<_$PlaylistDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PlaylistDtoImplToJson(
      this,
    );
  }
}

abstract class _PlaylistDto implements PlaylistDto {
  const factory _PlaylistDto(
      {required final String id,
      required final String name,
      required final String duration,
      required final ImageDto image,
      required final int streams,
      required final List<PlaylistCreatorDto> creators,
      required final List<PlaylistSongDto> songs}) = _$PlaylistDtoImpl;

  factory _PlaylistDto.fromJson(Map<String, dynamic> json) =
      _$PlaylistDtoImpl.fromJson;

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
  List<PlaylistCreatorDto> get creators;
  @override
  List<PlaylistSongDto> get songs;
  @override
  @JsonKey(ignore: true)
  _$$PlaylistDtoImplCopyWith<_$PlaylistDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PlaylistCreatorDto _$PlaylistCreatorDtoFromJson(Map<String, dynamic> json) {
  return _PlaylistCreatorDto.fromJson(json);
}

/// @nodoc
mixin _$PlaylistCreatorDto {
  String get creatorId => throw _privateConstructorUsedError;
  String get creatorName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlaylistCreatorDtoCopyWith<PlaylistCreatorDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaylistCreatorDtoCopyWith<$Res> {
  factory $PlaylistCreatorDtoCopyWith(
          PlaylistCreatorDto value, $Res Function(PlaylistCreatorDto) then) =
      _$PlaylistCreatorDtoCopyWithImpl<$Res, PlaylistCreatorDto>;
  @useResult
  $Res call({String creatorId, String creatorName});
}

/// @nodoc
class _$PlaylistCreatorDtoCopyWithImpl<$Res, $Val extends PlaylistCreatorDto>
    implements $PlaylistCreatorDtoCopyWith<$Res> {
  _$PlaylistCreatorDtoCopyWithImpl(this._value, this._then);

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
abstract class _$$PlaylistCreatorDtoImplCopyWith<$Res>
    implements $PlaylistCreatorDtoCopyWith<$Res> {
  factory _$$PlaylistCreatorDtoImplCopyWith(_$PlaylistCreatorDtoImpl value,
          $Res Function(_$PlaylistCreatorDtoImpl) then) =
      __$$PlaylistCreatorDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String creatorId, String creatorName});
}

/// @nodoc
class __$$PlaylistCreatorDtoImplCopyWithImpl<$Res>
    extends _$PlaylistCreatorDtoCopyWithImpl<$Res, _$PlaylistCreatorDtoImpl>
    implements _$$PlaylistCreatorDtoImplCopyWith<$Res> {
  __$$PlaylistCreatorDtoImplCopyWithImpl(_$PlaylistCreatorDtoImpl _value,
      $Res Function(_$PlaylistCreatorDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? creatorId = null,
    Object? creatorName = null,
  }) {
    return _then(_$PlaylistCreatorDtoImpl(
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
class _$PlaylistCreatorDtoImpl
    with DiagnosticableTreeMixin
    implements _PlaylistCreatorDto {
  const _$PlaylistCreatorDtoImpl(
      {required this.creatorId, required this.creatorName});

  factory _$PlaylistCreatorDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$PlaylistCreatorDtoImplFromJson(json);

  @override
  final String creatorId;
  @override
  final String creatorName;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PlaylistCreatorDto(creatorId: $creatorId, creatorName: $creatorName)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PlaylistCreatorDto'))
      ..add(DiagnosticsProperty('creatorId', creatorId))
      ..add(DiagnosticsProperty('creatorName', creatorName));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlaylistCreatorDtoImpl &&
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
  _$$PlaylistCreatorDtoImplCopyWith<_$PlaylistCreatorDtoImpl> get copyWith =>
      __$$PlaylistCreatorDtoImplCopyWithImpl<_$PlaylistCreatorDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PlaylistCreatorDtoImplToJson(
      this,
    );
  }
}

abstract class _PlaylistCreatorDto implements PlaylistCreatorDto {
  const factory _PlaylistCreatorDto(
      {required final String creatorId,
      required final String creatorName}) = _$PlaylistCreatorDtoImpl;

  factory _PlaylistCreatorDto.fromJson(Map<String, dynamic> json) =
      _$PlaylistCreatorDtoImpl.fromJson;

  @override
  String get creatorId;
  @override
  String get creatorName;
  @override
  @JsonKey(ignore: true)
  _$$PlaylistCreatorDtoImplCopyWith<_$PlaylistCreatorDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PlaylistSongDto _$PlaylistSongDtoFromJson(Map<String, dynamic> json) {
  return _PlaylistSongDto.fromJson(json);
}

/// @nodoc
mixin _$PlaylistSongDto {
  String get songId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get duration => throw _privateConstructorUsedError;
  ImageDto get image => throw _privateConstructorUsedError;
  List<PlaylistSongArtistDto> get artists => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlaylistSongDtoCopyWith<PlaylistSongDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaylistSongDtoCopyWith<$Res> {
  factory $PlaylistSongDtoCopyWith(
          PlaylistSongDto value, $Res Function(PlaylistSongDto) then) =
      _$PlaylistSongDtoCopyWithImpl<$Res, PlaylistSongDto>;
  @useResult
  $Res call(
      {String songId,
      String name,
      String duration,
      ImageDto image,
      List<PlaylistSongArtistDto> artists});

  $ImageDtoCopyWith<$Res> get image;
}

/// @nodoc
class _$PlaylistSongDtoCopyWithImpl<$Res, $Val extends PlaylistSongDto>
    implements $PlaylistSongDtoCopyWith<$Res> {
  _$PlaylistSongDtoCopyWithImpl(this._value, this._then);

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
              as List<PlaylistSongArtistDto>,
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
abstract class _$$PlaylistSongDtoImplCopyWith<$Res>
    implements $PlaylistSongDtoCopyWith<$Res> {
  factory _$$PlaylistSongDtoImplCopyWith(_$PlaylistSongDtoImpl value,
          $Res Function(_$PlaylistSongDtoImpl) then) =
      __$$PlaylistSongDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String songId,
      String name,
      String duration,
      ImageDto image,
      List<PlaylistSongArtistDto> artists});

  @override
  $ImageDtoCopyWith<$Res> get image;
}

/// @nodoc
class __$$PlaylistSongDtoImplCopyWithImpl<$Res>
    extends _$PlaylistSongDtoCopyWithImpl<$Res, _$PlaylistSongDtoImpl>
    implements _$$PlaylistSongDtoImplCopyWith<$Res> {
  __$$PlaylistSongDtoImplCopyWithImpl(
      _$PlaylistSongDtoImpl _value, $Res Function(_$PlaylistSongDtoImpl) _then)
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
    return _then(_$PlaylistSongDtoImpl(
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
              as List<PlaylistSongArtistDto>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PlaylistSongDtoImpl
    with DiagnosticableTreeMixin
    implements _PlaylistSongDto {
  const _$PlaylistSongDtoImpl(
      {required this.songId,
      required this.name,
      required this.duration,
      required this.image,
      required final List<PlaylistSongArtistDto> artists})
      : _artists = artists;

  factory _$PlaylistSongDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$PlaylistSongDtoImplFromJson(json);

  @override
  final String songId;
  @override
  final String name;
  @override
  final String duration;
  @override
  final ImageDto image;
  final List<PlaylistSongArtistDto> _artists;
  @override
  List<PlaylistSongArtistDto> get artists {
    if (_artists is EqualUnmodifiableListView) return _artists;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_artists);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PlaylistSongDto(songId: $songId, name: $name, duration: $duration, image: $image, artists: $artists)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PlaylistSongDto'))
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
            other is _$PlaylistSongDtoImpl &&
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
  _$$PlaylistSongDtoImplCopyWith<_$PlaylistSongDtoImpl> get copyWith =>
      __$$PlaylistSongDtoImplCopyWithImpl<_$PlaylistSongDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PlaylistSongDtoImplToJson(
      this,
    );
  }
}

abstract class _PlaylistSongDto implements PlaylistSongDto {
  const factory _PlaylistSongDto(
          {required final String songId,
          required final String name,
          required final String duration,
          required final ImageDto image,
          required final List<PlaylistSongArtistDto> artists}) =
      _$PlaylistSongDtoImpl;

  factory _PlaylistSongDto.fromJson(Map<String, dynamic> json) =
      _$PlaylistSongDtoImpl.fromJson;

  @override
  String get songId;
  @override
  String get name;
  @override
  String get duration;
  @override
  ImageDto get image;
  @override
  List<PlaylistSongArtistDto> get artists;
  @override
  @JsonKey(ignore: true)
  _$$PlaylistSongDtoImplCopyWith<_$PlaylistSongDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PlaylistSongArtistDto _$PlaylistSongArtistDtoFromJson(
    Map<String, dynamic> json) {
  return _PlaylistSongArtistDto.fromJson(json);
}

/// @nodoc
mixin _$PlaylistSongArtistDto {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlaylistSongArtistDtoCopyWith<PlaylistSongArtistDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaylistSongArtistDtoCopyWith<$Res> {
  factory $PlaylistSongArtistDtoCopyWith(PlaylistSongArtistDto value,
          $Res Function(PlaylistSongArtistDto) then) =
      _$PlaylistSongArtistDtoCopyWithImpl<$Res, PlaylistSongArtistDto>;
  @useResult
  $Res call({String id, String name});
}

/// @nodoc
class _$PlaylistSongArtistDtoCopyWithImpl<$Res,
        $Val extends PlaylistSongArtistDto>
    implements $PlaylistSongArtistDtoCopyWith<$Res> {
  _$PlaylistSongArtistDtoCopyWithImpl(this._value, this._then);

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
abstract class _$$PlaylistSongArtistDtoImplCopyWith<$Res>
    implements $PlaylistSongArtistDtoCopyWith<$Res> {
  factory _$$PlaylistSongArtistDtoImplCopyWith(
          _$PlaylistSongArtistDtoImpl value,
          $Res Function(_$PlaylistSongArtistDtoImpl) then) =
      __$$PlaylistSongArtistDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name});
}

/// @nodoc
class __$$PlaylistSongArtistDtoImplCopyWithImpl<$Res>
    extends _$PlaylistSongArtistDtoCopyWithImpl<$Res,
        _$PlaylistSongArtistDtoImpl>
    implements _$$PlaylistSongArtistDtoImplCopyWith<$Res> {
  __$$PlaylistSongArtistDtoImplCopyWithImpl(_$PlaylistSongArtistDtoImpl _value,
      $Res Function(_$PlaylistSongArtistDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$PlaylistSongArtistDtoImpl(
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
class _$PlaylistSongArtistDtoImpl
    with DiagnosticableTreeMixin
    implements _PlaylistSongArtistDto {
  const _$PlaylistSongArtistDtoImpl({required this.id, required this.name});

  factory _$PlaylistSongArtistDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$PlaylistSongArtistDtoImplFromJson(json);

  @override
  final String id;
  @override
  final String name;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PlaylistSongArtistDto(id: $id, name: $name)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PlaylistSongArtistDto'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlaylistSongArtistDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PlaylistSongArtistDtoImplCopyWith<_$PlaylistSongArtistDtoImpl>
      get copyWith => __$$PlaylistSongArtistDtoImplCopyWithImpl<
          _$PlaylistSongArtistDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PlaylistSongArtistDtoImplToJson(
      this,
    );
  }
}

abstract class _PlaylistSongArtistDto implements PlaylistSongArtistDto {
  const factory _PlaylistSongArtistDto(
      {required final String id,
      required final String name}) = _$PlaylistSongArtistDtoImpl;

  factory _PlaylistSongArtistDto.fromJson(Map<String, dynamic> json) =
      _$PlaylistSongArtistDtoImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$PlaylistSongArtistDtoImplCopyWith<_$PlaylistSongArtistDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}
