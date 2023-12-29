// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'top_playlist_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TopPlaylistsDto _$TopPlaylistsDtoFromJson(Map<String, dynamic> json) {
  return _TopPlaylistsDto.fromJson(json);
}

/// @nodoc
mixin _$TopPlaylistsDto {
  List<TopPlaylistDto> get playlists => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TopPlaylistsDtoCopyWith<TopPlaylistsDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopPlaylistsDtoCopyWith<$Res> {
  factory $TopPlaylistsDtoCopyWith(
          TopPlaylistsDto value, $Res Function(TopPlaylistsDto) then) =
      _$TopPlaylistsDtoCopyWithImpl<$Res, TopPlaylistsDto>;
  @useResult
  $Res call({List<TopPlaylistDto> playlists});
}

/// @nodoc
class _$TopPlaylistsDtoCopyWithImpl<$Res, $Val extends TopPlaylistsDto>
    implements $TopPlaylistsDtoCopyWith<$Res> {
  _$TopPlaylistsDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? playlists = null,
  }) {
    return _then(_value.copyWith(
      playlists: null == playlists
          ? _value.playlists
          : playlists // ignore: cast_nullable_to_non_nullable
              as List<TopPlaylistDto>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TopPlaylistsDtoImplCopyWith<$Res>
    implements $TopPlaylistsDtoCopyWith<$Res> {
  factory _$$TopPlaylistsDtoImplCopyWith(_$TopPlaylistsDtoImpl value,
          $Res Function(_$TopPlaylistsDtoImpl) then) =
      __$$TopPlaylistsDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<TopPlaylistDto> playlists});
}

/// @nodoc
class __$$TopPlaylistsDtoImplCopyWithImpl<$Res>
    extends _$TopPlaylistsDtoCopyWithImpl<$Res, _$TopPlaylistsDtoImpl>
    implements _$$TopPlaylistsDtoImplCopyWith<$Res> {
  __$$TopPlaylistsDtoImplCopyWithImpl(
      _$TopPlaylistsDtoImpl _value, $Res Function(_$TopPlaylistsDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? playlists = null,
  }) {
    return _then(_$TopPlaylistsDtoImpl(
      playlists: null == playlists
          ? _value._playlists
          : playlists // ignore: cast_nullable_to_non_nullable
              as List<TopPlaylistDto>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TopPlaylistsDtoImpl
    with DiagnosticableTreeMixin
    implements _TopPlaylistsDto {
  const _$TopPlaylistsDtoImpl({required final List<TopPlaylistDto> playlists})
      : _playlists = playlists;

  factory _$TopPlaylistsDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$TopPlaylistsDtoImplFromJson(json);

  final List<TopPlaylistDto> _playlists;
  @override
  List<TopPlaylistDto> get playlists {
    if (_playlists is EqualUnmodifiableListView) return _playlists;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_playlists);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TopPlaylistsDto(playlists: $playlists)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TopPlaylistsDto'))
      ..add(DiagnosticsProperty('playlists', playlists));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TopPlaylistsDtoImpl &&
            const DeepCollectionEquality()
                .equals(other._playlists, _playlists));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_playlists));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TopPlaylistsDtoImplCopyWith<_$TopPlaylistsDtoImpl> get copyWith =>
      __$$TopPlaylistsDtoImplCopyWithImpl<_$TopPlaylistsDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TopPlaylistsDtoImplToJson(
      this,
    );
  }
}

abstract class _TopPlaylistsDto implements TopPlaylistsDto {
  const factory _TopPlaylistsDto(
      {required final List<TopPlaylistDto> playlists}) = _$TopPlaylistsDtoImpl;

  factory _TopPlaylistsDto.fromJson(Map<String, dynamic> json) =
      _$TopPlaylistsDtoImpl.fromJson;

  @override
  List<TopPlaylistDto> get playlists;
  @override
  @JsonKey(ignore: true)
  _$$TopPlaylistsDtoImplCopyWith<_$TopPlaylistsDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TopPlaylistDto _$TopPlaylistDtoFromJson(Map<String, dynamic> json) {
  return _TopPlaylistDto.fromJson(json);
}

/// @nodoc
mixin _$TopPlaylistDto {
  String get id => throw _privateConstructorUsedError;
  ImageDto get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TopPlaylistDtoCopyWith<TopPlaylistDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopPlaylistDtoCopyWith<$Res> {
  factory $TopPlaylistDtoCopyWith(
          TopPlaylistDto value, $Res Function(TopPlaylistDto) then) =
      _$TopPlaylistDtoCopyWithImpl<$Res, TopPlaylistDto>;
  @useResult
  $Res call({String id, ImageDto image});

  $ImageDtoCopyWith<$Res> get image;
}

/// @nodoc
class _$TopPlaylistDtoCopyWithImpl<$Res, $Val extends TopPlaylistDto>
    implements $TopPlaylistDtoCopyWith<$Res> {
  _$TopPlaylistDtoCopyWithImpl(this._value, this._then);

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
abstract class _$$TopPlaylistDtoImplCopyWith<$Res>
    implements $TopPlaylistDtoCopyWith<$Res> {
  factory _$$TopPlaylistDtoImplCopyWith(_$TopPlaylistDtoImpl value,
          $Res Function(_$TopPlaylistDtoImpl) then) =
      __$$TopPlaylistDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, ImageDto image});

  @override
  $ImageDtoCopyWith<$Res> get image;
}

/// @nodoc
class __$$TopPlaylistDtoImplCopyWithImpl<$Res>
    extends _$TopPlaylistDtoCopyWithImpl<$Res, _$TopPlaylistDtoImpl>
    implements _$$TopPlaylistDtoImplCopyWith<$Res> {
  __$$TopPlaylistDtoImplCopyWithImpl(
      _$TopPlaylistDtoImpl _value, $Res Function(_$TopPlaylistDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? image = null,
  }) {
    return _then(_$TopPlaylistDtoImpl(
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
class _$TopPlaylistDtoImpl
    with DiagnosticableTreeMixin
    implements _TopPlaylistDto {
  const _$TopPlaylistDtoImpl({required this.id, required this.image});

  factory _$TopPlaylistDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$TopPlaylistDtoImplFromJson(json);

  @override
  final String id;
  @override
  final ImageDto image;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TopPlaylistDto(id: $id, image: $image)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TopPlaylistDto'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('image', image));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TopPlaylistDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TopPlaylistDtoImplCopyWith<_$TopPlaylistDtoImpl> get copyWith =>
      __$$TopPlaylistDtoImplCopyWithImpl<_$TopPlaylistDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TopPlaylistDtoImplToJson(
      this,
    );
  }
}

abstract class _TopPlaylistDto implements TopPlaylistDto {
  const factory _TopPlaylistDto(
      {required final String id,
      required final ImageDto image}) = _$TopPlaylistDtoImpl;

  factory _TopPlaylistDto.fromJson(Map<String, dynamic> json) =
      _$TopPlaylistDtoImpl.fromJson;

  @override
  String get id;
  @override
  ImageDto get image;
  @override
  @JsonKey(ignore: true)
  _$$TopPlaylistDtoImplCopyWith<_$TopPlaylistDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
