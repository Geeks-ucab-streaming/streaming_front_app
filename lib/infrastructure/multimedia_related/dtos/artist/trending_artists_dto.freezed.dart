// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'trending_artists_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TrendingArtistsDto _$TrendingArtistsDtoFromJson(Map<String, dynamic> json) {
  return _TrendingArtistsDto.fromJson(json);
}

/// @nodoc
mixin _$TrendingArtistsDto {
  List<TrendingArtistDto> get artists => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TrendingArtistsDtoCopyWith<TrendingArtistsDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrendingArtistsDtoCopyWith<$Res> {
  factory $TrendingArtistsDtoCopyWith(
          TrendingArtistsDto value, $Res Function(TrendingArtistsDto) then) =
      _$TrendingArtistsDtoCopyWithImpl<$Res, TrendingArtistsDto>;
  @useResult
  $Res call({List<TrendingArtistDto> artists});
}

/// @nodoc
class _$TrendingArtistsDtoCopyWithImpl<$Res, $Val extends TrendingArtistsDto>
    implements $TrendingArtistsDtoCopyWith<$Res> {
  _$TrendingArtistsDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? artists = null,
  }) {
    return _then(_value.copyWith(
      artists: null == artists
          ? _value.artists
          : artists // ignore: cast_nullable_to_non_nullable
              as List<TrendingArtistDto>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TrendingArtistsDtoImplCopyWith<$Res>
    implements $TrendingArtistsDtoCopyWith<$Res> {
  factory _$$TrendingArtistsDtoImplCopyWith(_$TrendingArtistsDtoImpl value,
          $Res Function(_$TrendingArtistsDtoImpl) then) =
      __$$TrendingArtistsDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<TrendingArtistDto> artists});
}

/// @nodoc
class __$$TrendingArtistsDtoImplCopyWithImpl<$Res>
    extends _$TrendingArtistsDtoCopyWithImpl<$Res, _$TrendingArtistsDtoImpl>
    implements _$$TrendingArtistsDtoImplCopyWith<$Res> {
  __$$TrendingArtistsDtoImplCopyWithImpl(_$TrendingArtistsDtoImpl _value,
      $Res Function(_$TrendingArtistsDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? artists = null,
  }) {
    return _then(_$TrendingArtistsDtoImpl(
      artists: null == artists
          ? _value._artists
          : artists // ignore: cast_nullable_to_non_nullable
              as List<TrendingArtistDto>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TrendingArtistsDtoImpl
    with DiagnosticableTreeMixin
    implements _TrendingArtistsDto {
  const _$TrendingArtistsDtoImpl(
      {required final List<TrendingArtistDto> artists})
      : _artists = artists;

  factory _$TrendingArtistsDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$TrendingArtistsDtoImplFromJson(json);

  final List<TrendingArtistDto> _artists;
  @override
  List<TrendingArtistDto> get artists {
    if (_artists is EqualUnmodifiableListView) return _artists;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_artists);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TrendingArtistsDto(artists: $artists)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TrendingArtistsDto'))
      ..add(DiagnosticsProperty('artists', artists));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TrendingArtistsDtoImpl &&
            const DeepCollectionEquality().equals(other._artists, _artists));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_artists));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TrendingArtistsDtoImplCopyWith<_$TrendingArtistsDtoImpl> get copyWith =>
      __$$TrendingArtistsDtoImplCopyWithImpl<_$TrendingArtistsDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TrendingArtistsDtoImplToJson(
      this,
    );
  }
}

abstract class _TrendingArtistsDto implements TrendingArtistsDto {
  const factory _TrendingArtistsDto(
          {required final List<TrendingArtistDto> artists}) =
      _$TrendingArtistsDtoImpl;

  factory _TrendingArtistsDto.fromJson(Map<String, dynamic> json) =
      _$TrendingArtistsDtoImpl.fromJson;

  @override
  List<TrendingArtistDto> get artists;
  @override
  @JsonKey(ignore: true)
  _$$TrendingArtistsDtoImplCopyWith<_$TrendingArtistsDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TrendingArtistDto _$TrendingArtistDtoFromJson(Map<String, dynamic> json) {
  return _TrendingArtistDto.fromJson(json);
}

/// @nodoc
mixin _$TrendingArtistDto {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  ImageDto get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TrendingArtistDtoCopyWith<TrendingArtistDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrendingArtistDtoCopyWith<$Res> {
  factory $TrendingArtistDtoCopyWith(
          TrendingArtistDto value, $Res Function(TrendingArtistDto) then) =
      _$TrendingArtistDtoCopyWithImpl<$Res, TrendingArtistDto>;
  @useResult
  $Res call({String id, String name, ImageDto image});

  $ImageDtoCopyWith<$Res> get image;
}

/// @nodoc
class _$TrendingArtistDtoCopyWithImpl<$Res, $Val extends TrendingArtistDto>
    implements $TrendingArtistDtoCopyWith<$Res> {
  _$TrendingArtistDtoCopyWithImpl(this._value, this._then);

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
abstract class _$$TrendingArtistDtoImplCopyWith<$Res>
    implements $TrendingArtistDtoCopyWith<$Res> {
  factory _$$TrendingArtistDtoImplCopyWith(_$TrendingArtistDtoImpl value,
          $Res Function(_$TrendingArtistDtoImpl) then) =
      __$$TrendingArtistDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name, ImageDto image});

  @override
  $ImageDtoCopyWith<$Res> get image;
}

/// @nodoc
class __$$TrendingArtistDtoImplCopyWithImpl<$Res>
    extends _$TrendingArtistDtoCopyWithImpl<$Res, _$TrendingArtistDtoImpl>
    implements _$$TrendingArtistDtoImplCopyWith<$Res> {
  __$$TrendingArtistDtoImplCopyWithImpl(_$TrendingArtistDtoImpl _value,
      $Res Function(_$TrendingArtistDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? image = null,
  }) {
    return _then(_$TrendingArtistDtoImpl(
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
class _$TrendingArtistDtoImpl
    with DiagnosticableTreeMixin
    implements _TrendingArtistDto {
  const _$TrendingArtistDtoImpl(
      {required this.id, required this.name, required this.image});

  factory _$TrendingArtistDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$TrendingArtistDtoImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final ImageDto image;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TrendingArtistDto(id: $id, name: $name, image: $image)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TrendingArtistDto'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('image', image));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TrendingArtistDtoImpl &&
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
  _$$TrendingArtistDtoImplCopyWith<_$TrendingArtistDtoImpl> get copyWith =>
      __$$TrendingArtistDtoImplCopyWithImpl<_$TrendingArtistDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TrendingArtistDtoImplToJson(
      this,
    );
  }
}

abstract class _TrendingArtistDto implements TrendingArtistDto {
  const factory _TrendingArtistDto(
      {required final String id,
      required final String name,
      required final ImageDto image}) = _$TrendingArtistDtoImpl;

  factory _TrendingArtistDto.fromJson(Map<String, dynamic> json) =
      _$TrendingArtistDtoImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  ImageDto get image;
  @override
  @JsonKey(ignore: true)
  _$$TrendingArtistDtoImplCopyWith<_$TrendingArtistDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
