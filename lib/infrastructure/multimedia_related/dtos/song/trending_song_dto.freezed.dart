// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'trending_song_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TrendingSongsDto _$TrendingSongsDtoFromJson(Map<String, dynamic> json) {
  return _TrendingSongsDto.fromJson(json);
}

/// @nodoc
mixin _$TrendingSongsDto {
  List<TrendingSongDto> get songs => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TrendingSongsDtoCopyWith<TrendingSongsDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrendingSongsDtoCopyWith<$Res> {
  factory $TrendingSongsDtoCopyWith(
          TrendingSongsDto value, $Res Function(TrendingSongsDto) then) =
      _$TrendingSongsDtoCopyWithImpl<$Res, TrendingSongsDto>;
  @useResult
  $Res call({List<TrendingSongDto> songs});
}

/// @nodoc
class _$TrendingSongsDtoCopyWithImpl<$Res, $Val extends TrendingSongsDto>
    implements $TrendingSongsDtoCopyWith<$Res> {
  _$TrendingSongsDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? songs = null,
  }) {
    return _then(_value.copyWith(
      songs: null == songs
          ? _value.songs
          : songs // ignore: cast_nullable_to_non_nullable
              as List<TrendingSongDto>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TrendingSongsDtoImplCopyWith<$Res>
    implements $TrendingSongsDtoCopyWith<$Res> {
  factory _$$TrendingSongsDtoImplCopyWith(_$TrendingSongsDtoImpl value,
          $Res Function(_$TrendingSongsDtoImpl) then) =
      __$$TrendingSongsDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<TrendingSongDto> songs});
}

/// @nodoc
class __$$TrendingSongsDtoImplCopyWithImpl<$Res>
    extends _$TrendingSongsDtoCopyWithImpl<$Res, _$TrendingSongsDtoImpl>
    implements _$$TrendingSongsDtoImplCopyWith<$Res> {
  __$$TrendingSongsDtoImplCopyWithImpl(_$TrendingSongsDtoImpl _value,
      $Res Function(_$TrendingSongsDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? songs = null,
  }) {
    return _then(_$TrendingSongsDtoImpl(
      songs: null == songs
          ? _value._songs
          : songs // ignore: cast_nullable_to_non_nullable
              as List<TrendingSongDto>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TrendingSongsDtoImpl
    with DiagnosticableTreeMixin
    implements _TrendingSongsDto {
  const _$TrendingSongsDtoImpl({required final List<TrendingSongDto> songs})
      : _songs = songs;

  factory _$TrendingSongsDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$TrendingSongsDtoImplFromJson(json);

  final List<TrendingSongDto> _songs;
  @override
  List<TrendingSongDto> get songs {
    if (_songs is EqualUnmodifiableListView) return _songs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_songs);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TrendingSongsDto(songs: $songs)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TrendingSongsDto'))
      ..add(DiagnosticsProperty('songs', songs));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TrendingSongsDtoImpl &&
            const DeepCollectionEquality().equals(other._songs, _songs));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_songs));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TrendingSongsDtoImplCopyWith<_$TrendingSongsDtoImpl> get copyWith =>
      __$$TrendingSongsDtoImplCopyWithImpl<_$TrendingSongsDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TrendingSongsDtoImplToJson(
      this,
    );
  }
}

abstract class _TrendingSongsDto implements TrendingSongsDto {
  const factory _TrendingSongsDto(
      {required final List<TrendingSongDto> songs}) = _$TrendingSongsDtoImpl;

  factory _TrendingSongsDto.fromJson(Map<String, dynamic> json) =
      _$TrendingSongsDtoImpl.fromJson;

  @override
  List<TrendingSongDto> get songs;
  @override
  @JsonKey(ignore: true)
  _$$TrendingSongsDtoImplCopyWith<_$TrendingSongsDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TrendingSongDto _$TrendingSongDtoFromJson(Map<String, dynamic> json) {
  return _TrendingSongDto.fromJson(json);
}

/// @nodoc
mixin _$TrendingSongDto {
  String get songId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get duration => throw _privateConstructorUsedError;
  List<TrendingSongArtistDto> get artists => throw _privateConstructorUsedError;
  ImageDto get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TrendingSongDtoCopyWith<TrendingSongDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrendingSongDtoCopyWith<$Res> {
  factory $TrendingSongDtoCopyWith(
          TrendingSongDto value, $Res Function(TrendingSongDto) then) =
      _$TrendingSongDtoCopyWithImpl<$Res, TrendingSongDto>;
  @useResult
  $Res call(
      {String songId,
      String name,
      String duration,
      List<TrendingSongArtistDto> artists,
      ImageDto image});

  $ImageDtoCopyWith<$Res> get image;
}

/// @nodoc
class _$TrendingSongDtoCopyWithImpl<$Res, $Val extends TrendingSongDto>
    implements $TrendingSongDtoCopyWith<$Res> {
  _$TrendingSongDtoCopyWithImpl(this._value, this._then);

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
    Object? artists = null,
    Object? image = null,
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
      artists: null == artists
          ? _value.artists
          : artists // ignore: cast_nullable_to_non_nullable
              as List<TrendingSongArtistDto>,
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
abstract class _$$TrendingSongDtoImplCopyWith<$Res>
    implements $TrendingSongDtoCopyWith<$Res> {
  factory _$$TrendingSongDtoImplCopyWith(_$TrendingSongDtoImpl value,
          $Res Function(_$TrendingSongDtoImpl) then) =
      __$$TrendingSongDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String songId,
      String name,
      String duration,
      List<TrendingSongArtistDto> artists,
      ImageDto image});

  @override
  $ImageDtoCopyWith<$Res> get image;
}

/// @nodoc
class __$$TrendingSongDtoImplCopyWithImpl<$Res>
    extends _$TrendingSongDtoCopyWithImpl<$Res, _$TrendingSongDtoImpl>
    implements _$$TrendingSongDtoImplCopyWith<$Res> {
  __$$TrendingSongDtoImplCopyWithImpl(
      _$TrendingSongDtoImpl _value, $Res Function(_$TrendingSongDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? songId = null,
    Object? name = null,
    Object? duration = null,
    Object? artists = null,
    Object? image = null,
  }) {
    return _then(_$TrendingSongDtoImpl(
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
      artists: null == artists
          ? _value._artists
          : artists // ignore: cast_nullable_to_non_nullable
              as List<TrendingSongArtistDto>,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as ImageDto,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TrendingSongDtoImpl
    with DiagnosticableTreeMixin
    implements _TrendingSongDto {
  const _$TrendingSongDtoImpl(
      {required this.songId,
      required this.name,
      required this.duration,
      required final List<TrendingSongArtistDto> artists,
      required this.image})
      : _artists = artists;

  factory _$TrendingSongDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$TrendingSongDtoImplFromJson(json);

  @override
  final String songId;
  @override
  final String name;
  @override
  final String duration;
  final List<TrendingSongArtistDto> _artists;
  @override
  List<TrendingSongArtistDto> get artists {
    if (_artists is EqualUnmodifiableListView) return _artists;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_artists);
  }

  @override
  final ImageDto image;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TrendingSongDto(songId: $songId, name: $name, duration: $duration, artists: $artists, image: $image)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TrendingSongDto'))
      ..add(DiagnosticsProperty('songId', songId))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('duration', duration))
      ..add(DiagnosticsProperty('artists', artists))
      ..add(DiagnosticsProperty('image', image));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TrendingSongDtoImpl &&
            (identical(other.songId, songId) || other.songId == songId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            const DeepCollectionEquality().equals(other._artists, _artists) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, songId, name, duration,
      const DeepCollectionEquality().hash(_artists), image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TrendingSongDtoImplCopyWith<_$TrendingSongDtoImpl> get copyWith =>
      __$$TrendingSongDtoImplCopyWithImpl<_$TrendingSongDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TrendingSongDtoImplToJson(
      this,
    );
  }
}

abstract class _TrendingSongDto implements TrendingSongDto {
  const factory _TrendingSongDto(
      {required final String songId,
      required final String name,
      required final String duration,
      required final List<TrendingSongArtistDto> artists,
      required final ImageDto image}) = _$TrendingSongDtoImpl;

  factory _TrendingSongDto.fromJson(Map<String, dynamic> json) =
      _$TrendingSongDtoImpl.fromJson;

  @override
  String get songId;
  @override
  String get name;
  @override
  String get duration;
  @override
  List<TrendingSongArtistDto> get artists;
  @override
  ImageDto get image;
  @override
  @JsonKey(ignore: true)
  _$$TrendingSongDtoImplCopyWith<_$TrendingSongDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TrendingSongArtistDto _$TrendingSongArtistDtoFromJson(
    Map<String, dynamic> json) {
  return _TrendingSongArtistDto.fromJson(json);
}

/// @nodoc
mixin _$TrendingSongArtistDto {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TrendingSongArtistDtoCopyWith<TrendingSongArtistDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrendingSongArtistDtoCopyWith<$Res> {
  factory $TrendingSongArtistDtoCopyWith(TrendingSongArtistDto value,
          $Res Function(TrendingSongArtistDto) then) =
      _$TrendingSongArtistDtoCopyWithImpl<$Res, TrendingSongArtistDto>;
  @useResult
  $Res call({String id, String name});
}

/// @nodoc
class _$TrendingSongArtistDtoCopyWithImpl<$Res,
        $Val extends TrendingSongArtistDto>
    implements $TrendingSongArtistDtoCopyWith<$Res> {
  _$TrendingSongArtistDtoCopyWithImpl(this._value, this._then);

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
abstract class _$$TrendingSongArtistDtoImplCopyWith<$Res>
    implements $TrendingSongArtistDtoCopyWith<$Res> {
  factory _$$TrendingSongArtistDtoImplCopyWith(
          _$TrendingSongArtistDtoImpl value,
          $Res Function(_$TrendingSongArtistDtoImpl) then) =
      __$$TrendingSongArtistDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name});
}

/// @nodoc
class __$$TrendingSongArtistDtoImplCopyWithImpl<$Res>
    extends _$TrendingSongArtistDtoCopyWithImpl<$Res,
        _$TrendingSongArtistDtoImpl>
    implements _$$TrendingSongArtistDtoImplCopyWith<$Res> {
  __$$TrendingSongArtistDtoImplCopyWithImpl(_$TrendingSongArtistDtoImpl _value,
      $Res Function(_$TrendingSongArtistDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$TrendingSongArtistDtoImpl(
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
class _$TrendingSongArtistDtoImpl
    with DiagnosticableTreeMixin
    implements _TrendingSongArtistDto {
  const _$TrendingSongArtistDtoImpl({required this.id, required this.name});

  factory _$TrendingSongArtistDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$TrendingSongArtistDtoImplFromJson(json);

  @override
  final String id;
  @override
  final String name;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TrendingSongArtistDto(id: $id, name: $name)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TrendingSongArtistDto'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TrendingSongArtistDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TrendingSongArtistDtoImplCopyWith<_$TrendingSongArtistDtoImpl>
      get copyWith => __$$TrendingSongArtistDtoImplCopyWithImpl<
          _$TrendingSongArtistDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TrendingSongArtistDtoImplToJson(
      this,
    );
  }
}

abstract class _TrendingSongArtistDto implements TrendingSongArtistDto {
  const factory _TrendingSongArtistDto(
      {required final String id,
      required final String name}) = _$TrendingSongArtistDtoImpl;

  factory _TrendingSongArtistDto.fromJson(Map<String, dynamic> json) =
      _$TrendingSongArtistDtoImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$TrendingSongArtistDtoImplCopyWith<_$TrendingSongArtistDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}
