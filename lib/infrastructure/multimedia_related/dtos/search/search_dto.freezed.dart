// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SearchDto _$SearchDtoFromJson(Map<String, dynamic> json) {
  return _SearchDto.fromJson(json);
}

/// @nodoc
mixin _$SearchDto {
  List<SearchSongDto> get songs => throw _privateConstructorUsedError;
  List<SearchArtistDto> get artist => throw _privateConstructorUsedError;
  List<SearchPlaylistDto> get playlists => throw _privateConstructorUsedError;
  List<SearchAlbumDto> get albums => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchDtoCopyWith<SearchDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchDtoCopyWith<$Res> {
  factory $SearchDtoCopyWith(SearchDto value, $Res Function(SearchDto) then) =
      _$SearchDtoCopyWithImpl<$Res, SearchDto>;
  @useResult
  $Res call(
      {List<SearchSongDto> songs,
      List<SearchArtistDto> artist,
      List<SearchPlaylistDto> playlists,
      List<SearchAlbumDto> albums});
}

/// @nodoc
class _$SearchDtoCopyWithImpl<$Res, $Val extends SearchDto>
    implements $SearchDtoCopyWith<$Res> {
  _$SearchDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? songs = null,
    Object? artist = null,
    Object? playlists = null,
    Object? albums = null,
  }) {
    return _then(_value.copyWith(
      songs: null == songs
          ? _value.songs
          : songs // ignore: cast_nullable_to_non_nullable
              as List<SearchSongDto>,
      artist: null == artist
          ? _value.artist
          : artist // ignore: cast_nullable_to_non_nullable
              as List<SearchArtistDto>,
      playlists: null == playlists
          ? _value.playlists
          : playlists // ignore: cast_nullable_to_non_nullable
              as List<SearchPlaylistDto>,
      albums: null == albums
          ? _value.albums
          : albums // ignore: cast_nullable_to_non_nullable
              as List<SearchAlbumDto>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SearchDtoImplCopyWith<$Res>
    implements $SearchDtoCopyWith<$Res> {
  factory _$$SearchDtoImplCopyWith(
          _$SearchDtoImpl value, $Res Function(_$SearchDtoImpl) then) =
      __$$SearchDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<SearchSongDto> songs,
      List<SearchArtistDto> artist,
      List<SearchPlaylistDto> playlists,
      List<SearchAlbumDto> albums});
}

/// @nodoc
class __$$SearchDtoImplCopyWithImpl<$Res>
    extends _$SearchDtoCopyWithImpl<$Res, _$SearchDtoImpl>
    implements _$$SearchDtoImplCopyWith<$Res> {
  __$$SearchDtoImplCopyWithImpl(
      _$SearchDtoImpl _value, $Res Function(_$SearchDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? songs = null,
    Object? artist = null,
    Object? playlists = null,
    Object? albums = null,
  }) {
    return _then(_$SearchDtoImpl(
      songs: null == songs
          ? _value._songs
          : songs // ignore: cast_nullable_to_non_nullable
              as List<SearchSongDto>,
      artist: null == artist
          ? _value._artist
          : artist // ignore: cast_nullable_to_non_nullable
              as List<SearchArtistDto>,
      playlists: null == playlists
          ? _value._playlists
          : playlists // ignore: cast_nullable_to_non_nullable
              as List<SearchPlaylistDto>,
      albums: null == albums
          ? _value._albums
          : albums // ignore: cast_nullable_to_non_nullable
              as List<SearchAlbumDto>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SearchDtoImpl with DiagnosticableTreeMixin implements _SearchDto {
  const _$SearchDtoImpl(
      {required final List<SearchSongDto> songs,
      required final List<SearchArtistDto> artist,
      required final List<SearchPlaylistDto> playlists,
      required final List<SearchAlbumDto> albums})
      : _songs = songs,
        _artist = artist,
        _playlists = playlists,
        _albums = albums;

  factory _$SearchDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$SearchDtoImplFromJson(json);

  final List<SearchSongDto> _songs;
  @override
  List<SearchSongDto> get songs {
    if (_songs is EqualUnmodifiableListView) return _songs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_songs);
  }

  final List<SearchArtistDto> _artist;
  @override
  List<SearchArtistDto> get artist {
    if (_artist is EqualUnmodifiableListView) return _artist;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_artist);
  }

  final List<SearchPlaylistDto> _playlists;
  @override
  List<SearchPlaylistDto> get playlists {
    if (_playlists is EqualUnmodifiableListView) return _playlists;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_playlists);
  }

  final List<SearchAlbumDto> _albums;
  @override
  List<SearchAlbumDto> get albums {
    if (_albums is EqualUnmodifiableListView) return _albums;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_albums);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SearchDto(songs: $songs, artist: $artist, playlists: $playlists, albums: $albums)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SearchDto'))
      ..add(DiagnosticsProperty('songs', songs))
      ..add(DiagnosticsProperty('artist', artist))
      ..add(DiagnosticsProperty('playlists', playlists))
      ..add(DiagnosticsProperty('albums', albums));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchDtoImpl &&
            const DeepCollectionEquality().equals(other._songs, _songs) &&
            const DeepCollectionEquality().equals(other._artist, _artist) &&
            const DeepCollectionEquality()
                .equals(other._playlists, _playlists) &&
            const DeepCollectionEquality().equals(other._albums, _albums));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_songs),
      const DeepCollectionEquality().hash(_artist),
      const DeepCollectionEquality().hash(_playlists),
      const DeepCollectionEquality().hash(_albums));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchDtoImplCopyWith<_$SearchDtoImpl> get copyWith =>
      __$$SearchDtoImplCopyWithImpl<_$SearchDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SearchDtoImplToJson(
      this,
    );
  }
}

abstract class _SearchDto implements SearchDto {
  const factory _SearchDto(
      {required final List<SearchSongDto> songs,
      required final List<SearchArtistDto> artist,
      required final List<SearchPlaylistDto> playlists,
      required final List<SearchAlbumDto> albums}) = _$SearchDtoImpl;

  factory _SearchDto.fromJson(Map<String, dynamic> json) =
      _$SearchDtoImpl.fromJson;

  @override
  List<SearchSongDto> get songs;
  @override
  List<SearchArtistDto> get artist;
  @override
  List<SearchPlaylistDto> get playlists;
  @override
  List<SearchAlbumDto> get albums;
  @override
  @JsonKey(ignore: true)
  _$$SearchDtoImplCopyWith<_$SearchDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SearchSongDto _$SearchSongDtoFromJson(Map<String, dynamic> json) {
  return _SearchSongDto.fromJson(json);
}

/// @nodoc
mixin _$SearchSongDto {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get duration => throw _privateConstructorUsedError;
  List<SearchSongArtistDto> get artists => throw _privateConstructorUsedError;
  ImageDto get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchSongDtoCopyWith<SearchSongDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchSongDtoCopyWith<$Res> {
  factory $SearchSongDtoCopyWith(
          SearchSongDto value, $Res Function(SearchSongDto) then) =
      _$SearchSongDtoCopyWithImpl<$Res, SearchSongDto>;
  @useResult
  $Res call(
      {String id,
      String name,
      String duration,
      List<SearchSongArtistDto> artists,
      ImageDto image});

  $ImageDtoCopyWith<$Res> get image;
}

/// @nodoc
class _$SearchSongDtoCopyWithImpl<$Res, $Val extends SearchSongDto>
    implements $SearchSongDtoCopyWith<$Res> {
  _$SearchSongDtoCopyWithImpl(this._value, this._then);

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
    Object? artists = null,
    Object? image = null,
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
      artists: null == artists
          ? _value.artists
          : artists // ignore: cast_nullable_to_non_nullable
              as List<SearchSongArtistDto>,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as ImageDto,
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
abstract class _$$SearchSongDtoImplCopyWith<$Res>
    implements $SearchSongDtoCopyWith<$Res> {
  factory _$$SearchSongDtoImplCopyWith(
          _$SearchSongDtoImpl value, $Res Function(_$SearchSongDtoImpl) then) =
      __$$SearchSongDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String duration,
      List<SearchSongArtistDto> artists,
      ImageDto image});

  @override
  $ImageDtoCopyWith<$Res> get image;
}

/// @nodoc
class __$$SearchSongDtoImplCopyWithImpl<$Res>
    extends _$SearchSongDtoCopyWithImpl<$Res, _$SearchSongDtoImpl>
    implements _$$SearchSongDtoImplCopyWith<$Res> {
  __$$SearchSongDtoImplCopyWithImpl(
      _$SearchSongDtoImpl _value, $Res Function(_$SearchSongDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? duration = null,
    Object? artists = null,
    Object? image = null,
  }) {
    return _then(_$SearchSongDtoImpl(
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
      artists: null == artists
          ? _value._artists
          : artists // ignore: cast_nullable_to_non_nullable
              as List<SearchSongArtistDto>,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as ImageDto,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SearchSongDtoImpl
    with DiagnosticableTreeMixin
    implements _SearchSongDto {
  const _$SearchSongDtoImpl(
      {required this.id,
      required this.name,
      required this.duration,
      required final List<SearchSongArtistDto> artists,
      required this.image})
      : _artists = artists;

  factory _$SearchSongDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$SearchSongDtoImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String duration;
  final List<SearchSongArtistDto> _artists;
  @override
  List<SearchSongArtistDto> get artists {
    if (_artists is EqualUnmodifiableListView) return _artists;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_artists);
  }

  @override
  final ImageDto image;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SearchSongDto(id: $id, name: $name, duration: $duration, artists: $artists, image: $image)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SearchSongDto'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('duration', duration))
      ..add(DiagnosticsProperty('artists', artists))
      ..add(DiagnosticsProperty('image', image));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchSongDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            const DeepCollectionEquality().equals(other._artists, _artists) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, duration,
      const DeepCollectionEquality().hash(_artists), image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchSongDtoImplCopyWith<_$SearchSongDtoImpl> get copyWith =>
      __$$SearchSongDtoImplCopyWithImpl<_$SearchSongDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SearchSongDtoImplToJson(
      this,
    );
  }
}

abstract class _SearchSongDto implements SearchSongDto {
  const factory _SearchSongDto(
      {required final String id,
      required final String name,
      required final String duration,
      required final List<SearchSongArtistDto> artists,
      required final ImageDto image}) = _$SearchSongDtoImpl;

  factory _SearchSongDto.fromJson(Map<String, dynamic> json) =
      _$SearchSongDtoImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get duration;
  @override
  List<SearchSongArtistDto> get artists;
  @override
  ImageDto get image;
  @override
  @JsonKey(ignore: true)
  _$$SearchSongDtoImplCopyWith<_$SearchSongDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SearchSongArtistDto _$SearchSongArtistDtoFromJson(Map<String, dynamic> json) {
  return _SearchSongArtistDto.fromJson(json);
}

/// @nodoc
mixin _$SearchSongArtistDto {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchSongArtistDtoCopyWith<SearchSongArtistDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchSongArtistDtoCopyWith<$Res> {
  factory $SearchSongArtistDtoCopyWith(
          SearchSongArtistDto value, $Res Function(SearchSongArtistDto) then) =
      _$SearchSongArtistDtoCopyWithImpl<$Res, SearchSongArtistDto>;
  @useResult
  $Res call({String id, String name});
}

/// @nodoc
class _$SearchSongArtistDtoCopyWithImpl<$Res, $Val extends SearchSongArtistDto>
    implements $SearchSongArtistDtoCopyWith<$Res> {
  _$SearchSongArtistDtoCopyWithImpl(this._value, this._then);

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
abstract class _$$SearchSongArtistDtoImplCopyWith<$Res>
    implements $SearchSongArtistDtoCopyWith<$Res> {
  factory _$$SearchSongArtistDtoImplCopyWith(_$SearchSongArtistDtoImpl value,
          $Res Function(_$SearchSongArtistDtoImpl) then) =
      __$$SearchSongArtistDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name});
}

/// @nodoc
class __$$SearchSongArtistDtoImplCopyWithImpl<$Res>
    extends _$SearchSongArtistDtoCopyWithImpl<$Res, _$SearchSongArtistDtoImpl>
    implements _$$SearchSongArtistDtoImplCopyWith<$Res> {
  __$$SearchSongArtistDtoImplCopyWithImpl(_$SearchSongArtistDtoImpl _value,
      $Res Function(_$SearchSongArtistDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$SearchSongArtistDtoImpl(
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
class _$SearchSongArtistDtoImpl
    with DiagnosticableTreeMixin
    implements _SearchSongArtistDto {
  const _$SearchSongArtistDtoImpl({required this.id, required this.name});

  factory _$SearchSongArtistDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$SearchSongArtistDtoImplFromJson(json);

  @override
  final String id;
  @override
  final String name;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SearchSongArtistDto(id: $id, name: $name)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SearchSongArtistDto'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchSongArtistDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchSongArtistDtoImplCopyWith<_$SearchSongArtistDtoImpl> get copyWith =>
      __$$SearchSongArtistDtoImplCopyWithImpl<_$SearchSongArtistDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SearchSongArtistDtoImplToJson(
      this,
    );
  }
}

abstract class _SearchSongArtistDto implements SearchSongArtistDto {
  const factory _SearchSongArtistDto(
      {required final String id,
      required final String name}) = _$SearchSongArtistDtoImpl;

  factory _SearchSongArtistDto.fromJson(Map<String, dynamic> json) =
      _$SearchSongArtistDtoImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$SearchSongArtistDtoImplCopyWith<_$SearchSongArtistDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SearchArtistDto _$SearchArtistDtoFromJson(Map<String, dynamic> json) {
  return _SearchArtistDto.fromJson(json);
}

/// @nodoc
mixin _$SearchArtistDto {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  ImageDto get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchArtistDtoCopyWith<SearchArtistDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchArtistDtoCopyWith<$Res> {
  factory $SearchArtistDtoCopyWith(
          SearchArtistDto value, $Res Function(SearchArtistDto) then) =
      _$SearchArtistDtoCopyWithImpl<$Res, SearchArtistDto>;
  @useResult
  $Res call({String id, String name, ImageDto image});

  $ImageDtoCopyWith<$Res> get image;
}

/// @nodoc
class _$SearchArtistDtoCopyWithImpl<$Res, $Val extends SearchArtistDto>
    implements $SearchArtistDtoCopyWith<$Res> {
  _$SearchArtistDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? image = null,
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
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as ImageDto,
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
abstract class _$$SearchArtistDtoImplCopyWith<$Res>
    implements $SearchArtistDtoCopyWith<$Res> {
  factory _$$SearchArtistDtoImplCopyWith(_$SearchArtistDtoImpl value,
          $Res Function(_$SearchArtistDtoImpl) then) =
      __$$SearchArtistDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name, ImageDto image});

  @override
  $ImageDtoCopyWith<$Res> get image;
}

/// @nodoc
class __$$SearchArtistDtoImplCopyWithImpl<$Res>
    extends _$SearchArtistDtoCopyWithImpl<$Res, _$SearchArtistDtoImpl>
    implements _$$SearchArtistDtoImplCopyWith<$Res> {
  __$$SearchArtistDtoImplCopyWithImpl(
      _$SearchArtistDtoImpl _value, $Res Function(_$SearchArtistDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? image = null,
  }) {
    return _then(_$SearchArtistDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as ImageDto,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SearchArtistDtoImpl
    with DiagnosticableTreeMixin
    implements _SearchArtistDto {
  const _$SearchArtistDtoImpl(
      {required this.id, required this.name, required this.image});

  factory _$SearchArtistDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$SearchArtistDtoImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final ImageDto image;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SearchArtistDto(id: $id, name: $name, image: $image)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SearchArtistDto'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('image', image));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchArtistDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchArtistDtoImplCopyWith<_$SearchArtistDtoImpl> get copyWith =>
      __$$SearchArtistDtoImplCopyWithImpl<_$SearchArtistDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SearchArtistDtoImplToJson(
      this,
    );
  }
}

abstract class _SearchArtistDto implements SearchArtistDto {
  const factory _SearchArtistDto(
      {required final String id,
      required final String name,
      required final ImageDto image}) = _$SearchArtistDtoImpl;

  factory _SearchArtistDto.fromJson(Map<String, dynamic> json) =
      _$SearchArtistDtoImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  ImageDto get image;
  @override
  @JsonKey(ignore: true)
  _$$SearchArtistDtoImplCopyWith<_$SearchArtistDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SearchPlaylistDto _$SearchPlaylistDtoFromJson(Map<String, dynamic> json) {
  return _SearchPlaylistDto.fromJson(json);
}

/// @nodoc
mixin _$SearchPlaylistDto {
  String get id => throw _privateConstructorUsedError;
  ImageDto get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchPlaylistDtoCopyWith<SearchPlaylistDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchPlaylistDtoCopyWith<$Res> {
  factory $SearchPlaylistDtoCopyWith(
          SearchPlaylistDto value, $Res Function(SearchPlaylistDto) then) =
      _$SearchPlaylistDtoCopyWithImpl<$Res, SearchPlaylistDto>;
  @useResult
  $Res call({String id, ImageDto image});

  $ImageDtoCopyWith<$Res> get image;
}

/// @nodoc
class _$SearchPlaylistDtoCopyWithImpl<$Res, $Val extends SearchPlaylistDto>
    implements $SearchPlaylistDtoCopyWith<$Res> {
  _$SearchPlaylistDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? image = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as ImageDto,
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
abstract class _$$SearchPlaylistDtoImplCopyWith<$Res>
    implements $SearchPlaylistDtoCopyWith<$Res> {
  factory _$$SearchPlaylistDtoImplCopyWith(_$SearchPlaylistDtoImpl value,
          $Res Function(_$SearchPlaylistDtoImpl) then) =
      __$$SearchPlaylistDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, ImageDto image});

  @override
  $ImageDtoCopyWith<$Res> get image;
}

/// @nodoc
class __$$SearchPlaylistDtoImplCopyWithImpl<$Res>
    extends _$SearchPlaylistDtoCopyWithImpl<$Res, _$SearchPlaylistDtoImpl>
    implements _$$SearchPlaylistDtoImplCopyWith<$Res> {
  __$$SearchPlaylistDtoImplCopyWithImpl(_$SearchPlaylistDtoImpl _value,
      $Res Function(_$SearchPlaylistDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? image = null,
  }) {
    return _then(_$SearchPlaylistDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as ImageDto,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SearchPlaylistDtoImpl
    with DiagnosticableTreeMixin
    implements _SearchPlaylistDto {
  const _$SearchPlaylistDtoImpl({required this.id, required this.image});

  factory _$SearchPlaylistDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$SearchPlaylistDtoImplFromJson(json);

  @override
  final String id;
  @override
  final ImageDto image;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SearchPlaylistDto(id: $id, image: $image)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SearchPlaylistDto'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('image', image));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchPlaylistDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchPlaylistDtoImplCopyWith<_$SearchPlaylistDtoImpl> get copyWith =>
      __$$SearchPlaylistDtoImplCopyWithImpl<_$SearchPlaylistDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SearchPlaylistDtoImplToJson(
      this,
    );
  }
}

abstract class _SearchPlaylistDto implements SearchPlaylistDto {
  const factory _SearchPlaylistDto(
      {required final String id,
      required final ImageDto image}) = _$SearchPlaylistDtoImpl;

  factory _SearchPlaylistDto.fromJson(Map<String, dynamic> json) =
      _$SearchPlaylistDtoImpl.fromJson;

  @override
  String get id;
  @override
  ImageDto get image;
  @override
  @JsonKey(ignore: true)
  _$$SearchPlaylistDtoImplCopyWith<_$SearchPlaylistDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SearchAlbumDto _$SearchAlbumDtoFromJson(Map<String, dynamic> json) {
  return _SearchAlbumDto.fromJson(json);
}

/// @nodoc
mixin _$SearchAlbumDto {
  String get id => throw _privateConstructorUsedError;
  ImageDto get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchAlbumDtoCopyWith<SearchAlbumDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchAlbumDtoCopyWith<$Res> {
  factory $SearchAlbumDtoCopyWith(
          SearchAlbumDto value, $Res Function(SearchAlbumDto) then) =
      _$SearchAlbumDtoCopyWithImpl<$Res, SearchAlbumDto>;
  @useResult
  $Res call({String id, ImageDto image});

  $ImageDtoCopyWith<$Res> get image;
}

/// @nodoc
class _$SearchAlbumDtoCopyWithImpl<$Res, $Val extends SearchAlbumDto>
    implements $SearchAlbumDtoCopyWith<$Res> {
  _$SearchAlbumDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? image = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as ImageDto,
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
abstract class _$$SearchAlbumDtoImplCopyWith<$Res>
    implements $SearchAlbumDtoCopyWith<$Res> {
  factory _$$SearchAlbumDtoImplCopyWith(_$SearchAlbumDtoImpl value,
          $Res Function(_$SearchAlbumDtoImpl) then) =
      __$$SearchAlbumDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, ImageDto image});

  @override
  $ImageDtoCopyWith<$Res> get image;
}

/// @nodoc
class __$$SearchAlbumDtoImplCopyWithImpl<$Res>
    extends _$SearchAlbumDtoCopyWithImpl<$Res, _$SearchAlbumDtoImpl>
    implements _$$SearchAlbumDtoImplCopyWith<$Res> {
  __$$SearchAlbumDtoImplCopyWithImpl(
      _$SearchAlbumDtoImpl _value, $Res Function(_$SearchAlbumDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? image = null,
  }) {
    return _then(_$SearchAlbumDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as ImageDto,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SearchAlbumDtoImpl
    with DiagnosticableTreeMixin
    implements _SearchAlbumDto {
  const _$SearchAlbumDtoImpl({required this.id, required this.image});

  factory _$SearchAlbumDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$SearchAlbumDtoImplFromJson(json);

  @override
  final String id;
  @override
  final ImageDto image;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SearchAlbumDto(id: $id, image: $image)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SearchAlbumDto'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('image', image));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchAlbumDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchAlbumDtoImplCopyWith<_$SearchAlbumDtoImpl> get copyWith =>
      __$$SearchAlbumDtoImplCopyWithImpl<_$SearchAlbumDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SearchAlbumDtoImplToJson(
      this,
    );
  }
}

abstract class _SearchAlbumDto implements SearchAlbumDto {
  const factory _SearchAlbumDto(
      {required final String id,
      required final ImageDto image}) = _$SearchAlbumDtoImpl;

  factory _SearchAlbumDto.fromJson(Map<String, dynamic> json) =
      _$SearchAlbumDtoImpl.fromJson;

  @override
  String get id;
  @override
  ImageDto get image;
  @override
  @JsonKey(ignore: true)
  _$$SearchAlbumDtoImplCopyWith<_$SearchAlbumDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
