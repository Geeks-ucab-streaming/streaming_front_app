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
  ImageDto get image => throw _privateConstructorUsedError;
  String get duration => throw _privateConstructorUsedError;
  int get reproductions => throw _privateConstructorUsedError;
  List<SongDto> get tracks => throw _privateConstructorUsedError;

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
      ImageDto image,
      String duration,
      int reproductions,
      List<SongDto> tracks});

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
    Object? image = null,
    Object? duration = null,
    Object? reproductions = null,
    Object? tracks = null,
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
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as String,
      reproductions: null == reproductions
          ? _value.reproductions
          : reproductions // ignore: cast_nullable_to_non_nullable
              as int,
      tracks: null == tracks
          ? _value.tracks
          : tracks // ignore: cast_nullable_to_non_nullable
              as List<SongDto>,
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
      ImageDto image,
      String duration,
      int reproductions,
      List<SongDto> tracks});

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
    Object? image = null,
    Object? duration = null,
    Object? reproductions = null,
    Object? tracks = null,
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
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as ImageDto,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as String,
      reproductions: null == reproductions
          ? _value.reproductions
          : reproductions // ignore: cast_nullable_to_non_nullable
              as int,
      tracks: null == tracks
          ? _value._tracks
          : tracks // ignore: cast_nullable_to_non_nullable
              as List<SongDto>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PlaylistDtoImpl with DiagnosticableTreeMixin implements _PlaylistDto {
  const _$PlaylistDtoImpl(
      {required this.id,
      required this.name,
      required this.image,
      required this.duration,
      required this.reproductions,
      required final List<SongDto> tracks})
      : _tracks = tracks;

  factory _$PlaylistDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$PlaylistDtoImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final ImageDto image;
  @override
  final String duration;
  @override
  final int reproductions;
  final List<SongDto> _tracks;
  @override
  List<SongDto> get tracks {
    if (_tracks is EqualUnmodifiableListView) return _tracks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tracks);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PlaylistDto(id: $id, name: $name, image: $image, duration: $duration, reproductions: $reproductions, tracks: $tracks)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PlaylistDto'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('image', image))
      ..add(DiagnosticsProperty('duration', duration))
      ..add(DiagnosticsProperty('reproductions', reproductions))
      ..add(DiagnosticsProperty('tracks', tracks));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlaylistDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.reproductions, reproductions) ||
                other.reproductions == reproductions) &&
            const DeepCollectionEquality().equals(other._tracks, _tracks));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, image, duration,
      reproductions, const DeepCollectionEquality().hash(_tracks));

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
      required final ImageDto image,
      required final String duration,
      required final int reproductions,
      required final List<SongDto> tracks}) = _$PlaylistDtoImpl;

  factory _PlaylistDto.fromJson(Map<String, dynamic> json) =
      _$PlaylistDtoImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  ImageDto get image;
  @override
  String get duration;
  @override
  int get reproductions;
  @override
  List<SongDto> get tracks;
  @override
  @JsonKey(ignore: true)
  _$$PlaylistDtoImplCopyWith<_$PlaylistDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
