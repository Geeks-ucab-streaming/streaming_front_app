// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'track_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TrackDto _$TrackDtoFromJson(Map<String, dynamic> json) {
  return _TrackDto.fromJson(json);
}

/// @nodoc
mixin _$TrackDto {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get compositor => throw _privateConstructorUsedError;
  String get imageURL => throw _privateConstructorUsedError;
  double get duration => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TrackDtoCopyWith<TrackDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrackDtoCopyWith<$Res> {
  factory $TrackDtoCopyWith(TrackDto value, $Res Function(TrackDto) then) =
      _$TrackDtoCopyWithImpl<$Res, TrackDto>;
  @useResult
  $Res call(
      {String id,
      String name,
      String compositor,
      String imageURL,
      double duration});
}

/// @nodoc
class _$TrackDtoCopyWithImpl<$Res, $Val extends TrackDto>
    implements $TrackDtoCopyWith<$Res> {
  _$TrackDtoCopyWithImpl(this._value, this._then);

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
    Object? duration = null,
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
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TrackDtoImplCopyWith<$Res>
    implements $TrackDtoCopyWith<$Res> {
  factory _$$TrackDtoImplCopyWith(
          _$TrackDtoImpl value, $Res Function(_$TrackDtoImpl) then) =
      __$$TrackDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String compositor,
      String imageURL,
      double duration});
}

/// @nodoc
class __$$TrackDtoImplCopyWithImpl<$Res>
    extends _$TrackDtoCopyWithImpl<$Res, _$TrackDtoImpl>
    implements _$$TrackDtoImplCopyWith<$Res> {
  __$$TrackDtoImplCopyWithImpl(
      _$TrackDtoImpl _value, $Res Function(_$TrackDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? compositor = null,
    Object? imageURL = null,
    Object? duration = null,
  }) {
    return _then(_$TrackDtoImpl(
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
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TrackDtoImpl with DiagnosticableTreeMixin implements _TrackDto {
  const _$TrackDtoImpl(
      {required this.id,
      required this.name,
      required this.compositor,
      required this.imageURL,
      required this.duration});

  factory _$TrackDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$TrackDtoImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String compositor;
  @override
  final String imageURL;
  @override
  final double duration;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TrackDto(id: $id, name: $name, compositor: $compositor, imageURL: $imageURL, duration: $duration)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TrackDto'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('compositor', compositor))
      ..add(DiagnosticsProperty('imageURL', imageURL))
      ..add(DiagnosticsProperty('duration', duration));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TrackDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.compositor, compositor) ||
                other.compositor == compositor) &&
            (identical(other.imageURL, imageURL) ||
                other.imageURL == imageURL) &&
            (identical(other.duration, duration) ||
                other.duration == duration));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, compositor, imageURL, duration);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TrackDtoImplCopyWith<_$TrackDtoImpl> get copyWith =>
      __$$TrackDtoImplCopyWithImpl<_$TrackDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TrackDtoImplToJson(
      this,
    );
  }
}

abstract class _TrackDto implements TrackDto {
  const factory _TrackDto(
      {required final String id,
      required final String name,
      required final String compositor,
      required final String imageURL,
      required final double duration}) = _$TrackDtoImpl;

  factory _TrackDto.fromJson(Map<String, dynamic> json) =
      _$TrackDtoImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get compositor;
  @override
  String get imageURL;
  @override
  double get duration;
  @override
  @JsonKey(ignore: true)
  _$$TrackDtoImplCopyWith<_$TrackDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
