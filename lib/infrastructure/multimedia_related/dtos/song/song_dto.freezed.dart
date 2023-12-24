// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'song_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SongDto _$SongDtoFromJson(Map<String, dynamic> json) {
  return _SongDto.fromJson(json);
}

/// @nodoc
mixin _$SongDto {
  String get songId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get duration => throw _privateConstructorUsedError;
  String get compositor => throw _privateConstructorUsedError;
  String get imageURL => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SongDtoCopyWith<SongDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SongDtoCopyWith<$Res> {
  factory $SongDtoCopyWith(SongDto value, $Res Function(SongDto) then) =
      _$SongDtoCopyWithImpl<$Res, SongDto>;
  @useResult
  $Res call(
      {String songId,
      String name,
      String duration,
      String compositor,
      String imageURL});
}

/// @nodoc
class _$SongDtoCopyWithImpl<$Res, $Val extends SongDto>
    implements $SongDtoCopyWith<$Res> {
  _$SongDtoCopyWithImpl(this._value, this._then);

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
    Object? compositor = null,
    Object? imageURL = null,
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
      compositor: null == compositor
          ? _value.compositor
          : compositor // ignore: cast_nullable_to_non_nullable
              as String,
      imageURL: null == imageURL
          ? _value.imageURL
          : imageURL // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SongDtoImplCopyWith<$Res> implements $SongDtoCopyWith<$Res> {
  factory _$$SongDtoImplCopyWith(
          _$SongDtoImpl value, $Res Function(_$SongDtoImpl) then) =
      __$$SongDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String songId,
      String name,
      String duration,
      String compositor,
      String imageURL});
}

/// @nodoc
class __$$SongDtoImplCopyWithImpl<$Res>
    extends _$SongDtoCopyWithImpl<$Res, _$SongDtoImpl>
    implements _$$SongDtoImplCopyWith<$Res> {
  __$$SongDtoImplCopyWithImpl(
      _$SongDtoImpl _value, $Res Function(_$SongDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? songId = null,
    Object? name = null,
    Object? duration = null,
    Object? compositor = null,
    Object? imageURL = null,
  }) {
    return _then(_$SongDtoImpl(
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
      compositor: null == compositor
          ? _value.compositor
          : compositor // ignore: cast_nullable_to_non_nullable
              as String,
      imageURL: null == imageURL
          ? _value.imageURL
          : imageURL // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SongDtoImpl with DiagnosticableTreeMixin implements _SongDto {
  const _$SongDtoImpl(
      {required this.songId,
      required this.name,
      required this.duration,
      required this.compositor,
      required this.imageURL});

  factory _$SongDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$SongDtoImplFromJson(json);

  @override
  final String songId;
  @override
  final String name;
  @override
  final String duration;
  @override
  final String compositor;
  @override
  final String imageURL;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SongDto(songId: $songId, name: $name, duration: $duration, compositor: $compositor, imageURL: $imageURL)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SongDto'))
      ..add(DiagnosticsProperty('songId', songId))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('duration', duration))
      ..add(DiagnosticsProperty('compositor', compositor))
      ..add(DiagnosticsProperty('imageURL', imageURL));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SongDtoImpl &&
            (identical(other.songId, songId) || other.songId == songId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.compositor, compositor) ||
                other.compositor == compositor) &&
            (identical(other.imageURL, imageURL) ||
                other.imageURL == imageURL));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, songId, name, duration, compositor, imageURL);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SongDtoImplCopyWith<_$SongDtoImpl> get copyWith =>
      __$$SongDtoImplCopyWithImpl<_$SongDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SongDtoImplToJson(
      this,
    );
  }
}

abstract class _SongDto implements SongDto {
  const factory _SongDto(
      {required final String songId,
      required final String name,
      required final String duration,
      required final String compositor,
      required final String imageURL}) = _$SongDtoImpl;

  factory _SongDto.fromJson(Map<String, dynamic> json) = _$SongDtoImpl.fromJson;

  @override
  String get songId;
  @override
  String get name;
  @override
  String get duration;
  @override
  String get compositor;
  @override
  String get imageURL;
  @override
  @JsonKey(ignore: true)
  _$$SongDtoImplCopyWith<_$SongDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
