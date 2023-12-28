// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'artist_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ArtistDto _$ArtistDtoFromJson(Map<String, dynamic> json) {
  return _ArtistDto.fromJson(json);
}

/// @nodoc
mixin _$ArtistDto {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  List<dynamic> get image => throw _privateConstructorUsedError;
  List<ArtistAlbumDto> get albums => throw _privateConstructorUsedError;
  List<ArtistSongDto> get songs => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ArtistDtoCopyWith<ArtistDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArtistDtoCopyWith<$Res> {
  factory $ArtistDtoCopyWith(ArtistDto value, $Res Function(ArtistDto) then) =
      _$ArtistDtoCopyWithImpl<$Res, ArtistDto>;
  @useResult
  $Res call(
      {String id,
      String name,
      List<dynamic> image,
      List<ArtistAlbumDto> albums,
      List<ArtistSongDto> songs});
}

/// @nodoc
class _$ArtistDtoCopyWithImpl<$Res, $Val extends ArtistDto>
    implements $ArtistDtoCopyWith<$Res> {
  _$ArtistDtoCopyWithImpl(this._value, this._then);

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
    Object? albums = null,
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
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      albums: null == albums
          ? _value.albums
          : albums // ignore: cast_nullable_to_non_nullable
              as List<ArtistAlbumDto>,
      songs: null == songs
          ? _value.songs
          : songs // ignore: cast_nullable_to_non_nullable
              as List<ArtistSongDto>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ArtistDtoImplCopyWith<$Res>
    implements $ArtistDtoCopyWith<$Res> {
  factory _$$ArtistDtoImplCopyWith(
          _$ArtistDtoImpl value, $Res Function(_$ArtistDtoImpl) then) =
      __$$ArtistDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      List<dynamic> image,
      List<ArtistAlbumDto> albums,
      List<ArtistSongDto> songs});
}

/// @nodoc
class __$$ArtistDtoImplCopyWithImpl<$Res>
    extends _$ArtistDtoCopyWithImpl<$Res, _$ArtistDtoImpl>
    implements _$$ArtistDtoImplCopyWith<$Res> {
  __$$ArtistDtoImplCopyWithImpl(
      _$ArtistDtoImpl _value, $Res Function(_$ArtistDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? image = null,
    Object? albums = null,
    Object? songs = null,
  }) {
    return _then(_$ArtistDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value._image
          : image // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      albums: null == albums
          ? _value._albums
          : albums // ignore: cast_nullable_to_non_nullable
              as List<ArtistAlbumDto>,
      songs: null == songs
          ? _value._songs
          : songs // ignore: cast_nullable_to_non_nullable
              as List<ArtistSongDto>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ArtistDtoImpl with DiagnosticableTreeMixin implements _ArtistDto {
  const _$ArtistDtoImpl(
      {required this.id,
      required this.name,
      required final List<dynamic> image,
      required final List<ArtistAlbumDto> albums,
      required final List<ArtistSongDto> songs})
      : _image = image,
        _albums = albums,
        _songs = songs;

  factory _$ArtistDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ArtistDtoImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  final List<dynamic> _image;
  @override
  List<dynamic> get image {
    if (_image is EqualUnmodifiableListView) return _image;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_image);
  }

  final List<ArtistAlbumDto> _albums;
  @override
  List<ArtistAlbumDto> get albums {
    if (_albums is EqualUnmodifiableListView) return _albums;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_albums);
  }

  final List<ArtistSongDto> _songs;
  @override
  List<ArtistSongDto> get songs {
    if (_songs is EqualUnmodifiableListView) return _songs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_songs);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ArtistDto(id: $id, name: $name, image: $image, albums: $albums, songs: $songs)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ArtistDto'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('image', image))
      ..add(DiagnosticsProperty('albums', albums))
      ..add(DiagnosticsProperty('songs', songs));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ArtistDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._image, _image) &&
            const DeepCollectionEquality().equals(other._albums, _albums) &&
            const DeepCollectionEquality().equals(other._songs, _songs));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      const DeepCollectionEquality().hash(_image),
      const DeepCollectionEquality().hash(_albums),
      const DeepCollectionEquality().hash(_songs));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ArtistDtoImplCopyWith<_$ArtistDtoImpl> get copyWith =>
      __$$ArtistDtoImplCopyWithImpl<_$ArtistDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ArtistDtoImplToJson(
      this,
    );
  }
}

abstract class _ArtistDto implements ArtistDto {
  const factory _ArtistDto(
      {required final String id,
      required final String name,
      required final List<dynamic> image,
      required final List<ArtistAlbumDto> albums,
      required final List<ArtistSongDto> songs}) = _$ArtistDtoImpl;

  factory _ArtistDto.fromJson(Map<String, dynamic> json) =
      _$ArtistDtoImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  List<dynamic> get image;
  @override
  List<ArtistAlbumDto> get albums;
  @override
  List<ArtistSongDto> get songs;
  @override
  @JsonKey(ignore: true)
  _$$ArtistDtoImplCopyWith<_$ArtistDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ArtistAlbumDto _$ArtistAlbumDtoFromJson(Map<String, dynamic> json) {
  return _ArtistAlbumDto.fromJson(json);
}

/// @nodoc
mixin _$ArtistAlbumDto {
  String get id => throw _privateConstructorUsedError;
  List<dynamic> get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ArtistAlbumDtoCopyWith<ArtistAlbumDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArtistAlbumDtoCopyWith<$Res> {
  factory $ArtistAlbumDtoCopyWith(
          ArtistAlbumDto value, $Res Function(ArtistAlbumDto) then) =
      _$ArtistAlbumDtoCopyWithImpl<$Res, ArtistAlbumDto>;
  @useResult
  $Res call({String id, List<dynamic> image});
}

/// @nodoc
class _$ArtistAlbumDtoCopyWithImpl<$Res, $Val extends ArtistAlbumDto>
    implements $ArtistAlbumDtoCopyWith<$Res> {
  _$ArtistAlbumDtoCopyWithImpl(this._value, this._then);

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
              as List<dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ArtistAlbumDtoImplCopyWith<$Res>
    implements $ArtistAlbumDtoCopyWith<$Res> {
  factory _$$ArtistAlbumDtoImplCopyWith(_$ArtistAlbumDtoImpl value,
          $Res Function(_$ArtistAlbumDtoImpl) then) =
      __$$ArtistAlbumDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, List<dynamic> image});
}

/// @nodoc
class __$$ArtistAlbumDtoImplCopyWithImpl<$Res>
    extends _$ArtistAlbumDtoCopyWithImpl<$Res, _$ArtistAlbumDtoImpl>
    implements _$$ArtistAlbumDtoImplCopyWith<$Res> {
  __$$ArtistAlbumDtoImplCopyWithImpl(
      _$ArtistAlbumDtoImpl _value, $Res Function(_$ArtistAlbumDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? image = null,
  }) {
    return _then(_$ArtistAlbumDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value._image
          : image // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ArtistAlbumDtoImpl
    with DiagnosticableTreeMixin
    implements _ArtistAlbumDto {
  const _$ArtistAlbumDtoImpl(
      {required this.id, required final List<dynamic> image})
      : _image = image;

  factory _$ArtistAlbumDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ArtistAlbumDtoImplFromJson(json);

  @override
  final String id;
  final List<dynamic> _image;
  @override
  List<dynamic> get image {
    if (_image is EqualUnmodifiableListView) return _image;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_image);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ArtistAlbumDto(id: $id, image: $image)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ArtistAlbumDto'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('image', image));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ArtistAlbumDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._image, _image));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, const DeepCollectionEquality().hash(_image));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ArtistAlbumDtoImplCopyWith<_$ArtistAlbumDtoImpl> get copyWith =>
      __$$ArtistAlbumDtoImplCopyWithImpl<_$ArtistAlbumDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ArtistAlbumDtoImplToJson(
      this,
    );
  }
}

abstract class _ArtistAlbumDto implements ArtistAlbumDto {
  const factory _ArtistAlbumDto(
      {required final String id,
      required final List<dynamic> image}) = _$ArtistAlbumDtoImpl;

  factory _ArtistAlbumDto.fromJson(Map<String, dynamic> json) =
      _$ArtistAlbumDtoImpl.fromJson;

  @override
  String get id;
  @override
  List<dynamic> get image;
  @override
  @JsonKey(ignore: true)
  _$$ArtistAlbumDtoImplCopyWith<_$ArtistAlbumDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ArtistSongDto _$ArtistSongDtoFromJson(Map<String, dynamic> json) {
  return _ArtistSongDto.fromJson(json);
}

/// @nodoc
mixin _$ArtistSongDto {
  String get id => throw _privateConstructorUsedError;
  String get duration => throw _privateConstructorUsedError;
  List<dynamic> get image => throw _privateConstructorUsedError;
  List<ArtistSongArtistDto> get artists => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ArtistSongDtoCopyWith<ArtistSongDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArtistSongDtoCopyWith<$Res> {
  factory $ArtistSongDtoCopyWith(
          ArtistSongDto value, $Res Function(ArtistSongDto) then) =
      _$ArtistSongDtoCopyWithImpl<$Res, ArtistSongDto>;
  @useResult
  $Res call(
      {String id,
      String duration,
      List<dynamic> image,
      List<ArtistSongArtistDto> artists});
}

/// @nodoc
class _$ArtistSongDtoCopyWithImpl<$Res, $Val extends ArtistSongDto>
    implements $ArtistSongDtoCopyWith<$Res> {
  _$ArtistSongDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? duration = null,
    Object? image = null,
    Object? artists = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      artists: null == artists
          ? _value.artists
          : artists // ignore: cast_nullable_to_non_nullable
              as List<ArtistSongArtistDto>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ArtistSongDtoImplCopyWith<$Res>
    implements $ArtistSongDtoCopyWith<$Res> {
  factory _$$ArtistSongDtoImplCopyWith(
          _$ArtistSongDtoImpl value, $Res Function(_$ArtistSongDtoImpl) then) =
      __$$ArtistSongDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String duration,
      List<dynamic> image,
      List<ArtistSongArtistDto> artists});
}

/// @nodoc
class __$$ArtistSongDtoImplCopyWithImpl<$Res>
    extends _$ArtistSongDtoCopyWithImpl<$Res, _$ArtistSongDtoImpl>
    implements _$$ArtistSongDtoImplCopyWith<$Res> {
  __$$ArtistSongDtoImplCopyWithImpl(
      _$ArtistSongDtoImpl _value, $Res Function(_$ArtistSongDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? duration = null,
    Object? image = null,
    Object? artists = null,
  }) {
    return _then(_$ArtistSongDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value._image
          : image // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      artists: null == artists
          ? _value._artists
          : artists // ignore: cast_nullable_to_non_nullable
              as List<ArtistSongArtistDto>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ArtistSongDtoImpl
    with DiagnosticableTreeMixin
    implements _ArtistSongDto {
  const _$ArtistSongDtoImpl(
      {required this.id,
      required this.duration,
      required final List<dynamic> image,
      required final List<ArtistSongArtistDto> artists})
      : _image = image,
        _artists = artists;

  factory _$ArtistSongDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ArtistSongDtoImplFromJson(json);

  @override
  final String id;
  @override
  final String duration;
  final List<dynamic> _image;
  @override
  List<dynamic> get image {
    if (_image is EqualUnmodifiableListView) return _image;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_image);
  }

  final List<ArtistSongArtistDto> _artists;
  @override
  List<ArtistSongArtistDto> get artists {
    if (_artists is EqualUnmodifiableListView) return _artists;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_artists);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ArtistSongDto(id: $id, duration: $duration, image: $image, artists: $artists)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ArtistSongDto'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('duration', duration))
      ..add(DiagnosticsProperty('image', image))
      ..add(DiagnosticsProperty('artists', artists));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ArtistSongDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            const DeepCollectionEquality().equals(other._image, _image) &&
            const DeepCollectionEquality().equals(other._artists, _artists));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      duration,
      const DeepCollectionEquality().hash(_image),
      const DeepCollectionEquality().hash(_artists));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ArtistSongDtoImplCopyWith<_$ArtistSongDtoImpl> get copyWith =>
      __$$ArtistSongDtoImplCopyWithImpl<_$ArtistSongDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ArtistSongDtoImplToJson(
      this,
    );
  }
}

abstract class _ArtistSongDto implements ArtistSongDto {
  const factory _ArtistSongDto(
      {required final String id,
      required final String duration,
      required final List<dynamic> image,
      required final List<ArtistSongArtistDto> artists}) = _$ArtistSongDtoImpl;

  factory _ArtistSongDto.fromJson(Map<String, dynamic> json) =
      _$ArtistSongDtoImpl.fromJson;

  @override
  String get id;
  @override
  String get duration;
  @override
  List<dynamic> get image;
  @override
  List<ArtistSongArtistDto> get artists;
  @override
  @JsonKey(ignore: true)
  _$$ArtistSongDtoImplCopyWith<_$ArtistSongDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ArtistSongArtistDto _$ArtistSongArtistDtoFromJson(Map<String, dynamic> json) {
  return _ArtistSongArtistDto.fromJson(json);
}

/// @nodoc
mixin _$ArtistSongArtistDto {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ArtistSongArtistDtoCopyWith<ArtistSongArtistDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArtistSongArtistDtoCopyWith<$Res> {
  factory $ArtistSongArtistDtoCopyWith(
          ArtistSongArtistDto value, $Res Function(ArtistSongArtistDto) then) =
      _$ArtistSongArtistDtoCopyWithImpl<$Res, ArtistSongArtistDto>;
  @useResult
  $Res call({String id, String name});
}

/// @nodoc
class _$ArtistSongArtistDtoCopyWithImpl<$Res, $Val extends ArtistSongArtistDto>
    implements $ArtistSongArtistDtoCopyWith<$Res> {
  _$ArtistSongArtistDtoCopyWithImpl(this._value, this._then);

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
abstract class _$$ArtistSongArtistDtoImplCopyWith<$Res>
    implements $ArtistSongArtistDtoCopyWith<$Res> {
  factory _$$ArtistSongArtistDtoImplCopyWith(_$ArtistSongArtistDtoImpl value,
          $Res Function(_$ArtistSongArtistDtoImpl) then) =
      __$$ArtistSongArtistDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name});
}

/// @nodoc
class __$$ArtistSongArtistDtoImplCopyWithImpl<$Res>
    extends _$ArtistSongArtistDtoCopyWithImpl<$Res, _$ArtistSongArtistDtoImpl>
    implements _$$ArtistSongArtistDtoImplCopyWith<$Res> {
  __$$ArtistSongArtistDtoImplCopyWithImpl(_$ArtistSongArtistDtoImpl _value,
      $Res Function(_$ArtistSongArtistDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$ArtistSongArtistDtoImpl(
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
class _$ArtistSongArtistDtoImpl
    with DiagnosticableTreeMixin
    implements _ArtistSongArtistDto {
  const _$ArtistSongArtistDtoImpl({required this.id, required this.name});

  factory _$ArtistSongArtistDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ArtistSongArtistDtoImplFromJson(json);

  @override
  final String id;
  @override
  final String name;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ArtistSongArtistDto(id: $id, name: $name)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ArtistSongArtistDto'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ArtistSongArtistDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ArtistSongArtistDtoImplCopyWith<_$ArtistSongArtistDtoImpl> get copyWith =>
      __$$ArtistSongArtistDtoImplCopyWithImpl<_$ArtistSongArtistDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ArtistSongArtistDtoImplToJson(
      this,
    );
  }
}

abstract class _ArtistSongArtistDto implements ArtistSongArtistDto {
  const factory _ArtistSongArtistDto(
      {required final String id,
      required final String name}) = _$ArtistSongArtistDtoImpl;

  factory _ArtistSongArtistDto.fromJson(Map<String, dynamic> json) =
      _$ArtistSongArtistDtoImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$ArtistSongArtistDtoImplCopyWith<_$ArtistSongArtistDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
