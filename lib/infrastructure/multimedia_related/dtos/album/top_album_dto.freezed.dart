// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'top_album_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TopAlbumsDto _$TopAlbumsDtoFromJson(Map<String, dynamic> json) {
  return _TopAlbumsDto.fromJson(json);
}

/// @nodoc
mixin _$TopAlbumsDto {
  List<TopAlbumDto> get playlists => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TopAlbumsDtoCopyWith<TopAlbumsDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopAlbumsDtoCopyWith<$Res> {
  factory $TopAlbumsDtoCopyWith(
          TopAlbumsDto value, $Res Function(TopAlbumsDto) then) =
      _$TopAlbumsDtoCopyWithImpl<$Res, TopAlbumsDto>;
  @useResult
  $Res call({List<TopAlbumDto> playlists});
}

/// @nodoc
class _$TopAlbumsDtoCopyWithImpl<$Res, $Val extends TopAlbumsDto>
    implements $TopAlbumsDtoCopyWith<$Res> {
  _$TopAlbumsDtoCopyWithImpl(this._value, this._then);

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
              as List<TopAlbumDto>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TopAlbumsDtoImplCopyWith<$Res>
    implements $TopAlbumsDtoCopyWith<$Res> {
  factory _$$TopAlbumsDtoImplCopyWith(
          _$TopAlbumsDtoImpl value, $Res Function(_$TopAlbumsDtoImpl) then) =
      __$$TopAlbumsDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<TopAlbumDto> playlists});
}

/// @nodoc
class __$$TopAlbumsDtoImplCopyWithImpl<$Res>
    extends _$TopAlbumsDtoCopyWithImpl<$Res, _$TopAlbumsDtoImpl>
    implements _$$TopAlbumsDtoImplCopyWith<$Res> {
  __$$TopAlbumsDtoImplCopyWithImpl(
      _$TopAlbumsDtoImpl _value, $Res Function(_$TopAlbumsDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? playlists = null,
  }) {
    return _then(_$TopAlbumsDtoImpl(
      playlists: null == playlists
          ? _value._playlists
          : playlists // ignore: cast_nullable_to_non_nullable
              as List<TopAlbumDto>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TopAlbumsDtoImpl with DiagnosticableTreeMixin implements _TopAlbumsDto {
  const _$TopAlbumsDtoImpl({required final List<TopAlbumDto> playlists})
      : _playlists = playlists;

  factory _$TopAlbumsDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$TopAlbumsDtoImplFromJson(json);

  final List<TopAlbumDto> _playlists;
  @override
  List<TopAlbumDto> get playlists {
    if (_playlists is EqualUnmodifiableListView) return _playlists;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_playlists);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TopAlbumsDto(playlists: $playlists)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TopAlbumsDto'))
      ..add(DiagnosticsProperty('playlists', playlists));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TopAlbumsDtoImpl &&
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
  _$$TopAlbumsDtoImplCopyWith<_$TopAlbumsDtoImpl> get copyWith =>
      __$$TopAlbumsDtoImplCopyWithImpl<_$TopAlbumsDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TopAlbumsDtoImplToJson(
      this,
    );
  }
}

abstract class _TopAlbumsDto implements TopAlbumsDto {
  const factory _TopAlbumsDto({required final List<TopAlbumDto> playlists}) =
      _$TopAlbumsDtoImpl;

  factory _TopAlbumsDto.fromJson(Map<String, dynamic> json) =
      _$TopAlbumsDtoImpl.fromJson;

  @override
  List<TopAlbumDto> get playlists;
  @override
  @JsonKey(ignore: true)
  _$$TopAlbumsDtoImplCopyWith<_$TopAlbumsDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TopAlbumDto _$TopAlbumDtoFromJson(Map<String, dynamic> json) {
  return _TopAlbumDto.fromJson(json);
}

/// @nodoc
mixin _$TopAlbumDto {
  String get id => throw _privateConstructorUsedError;
  List<dynamic> get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TopAlbumDtoCopyWith<TopAlbumDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopAlbumDtoCopyWith<$Res> {
  factory $TopAlbumDtoCopyWith(
          TopAlbumDto value, $Res Function(TopAlbumDto) then) =
      _$TopAlbumDtoCopyWithImpl<$Res, TopAlbumDto>;
  @useResult
  $Res call({String id, List<dynamic> image});
}

/// @nodoc
class _$TopAlbumDtoCopyWithImpl<$Res, $Val extends TopAlbumDto>
    implements $TopAlbumDtoCopyWith<$Res> {
  _$TopAlbumDtoCopyWithImpl(this._value, this._then);

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
abstract class _$$TopAlbumDtoImplCopyWith<$Res>
    implements $TopAlbumDtoCopyWith<$Res> {
  factory _$$TopAlbumDtoImplCopyWith(
          _$TopAlbumDtoImpl value, $Res Function(_$TopAlbumDtoImpl) then) =
      __$$TopAlbumDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, List<dynamic> image});
}

/// @nodoc
class __$$TopAlbumDtoImplCopyWithImpl<$Res>
    extends _$TopAlbumDtoCopyWithImpl<$Res, _$TopAlbumDtoImpl>
    implements _$$TopAlbumDtoImplCopyWith<$Res> {
  __$$TopAlbumDtoImplCopyWithImpl(
      _$TopAlbumDtoImpl _value, $Res Function(_$TopAlbumDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? image = null,
  }) {
    return _then(_$TopAlbumDtoImpl(
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
class _$TopAlbumDtoImpl with DiagnosticableTreeMixin implements _TopAlbumDto {
  const _$TopAlbumDtoImpl(
      {required this.id, required final List<dynamic> image})
      : _image = image;

  factory _$TopAlbumDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$TopAlbumDtoImplFromJson(json);

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
    return 'TopAlbumDto(id: $id, image: $image)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TopAlbumDto'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('image', image));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TopAlbumDtoImpl &&
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
  _$$TopAlbumDtoImplCopyWith<_$TopAlbumDtoImpl> get copyWith =>
      __$$TopAlbumDtoImplCopyWithImpl<_$TopAlbumDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TopAlbumDtoImplToJson(
      this,
    );
  }
}

abstract class _TopAlbumDto implements TopAlbumDto {
  const factory _TopAlbumDto(
      {required final String id,
      required final List<dynamic> image}) = _$TopAlbumDtoImpl;

  factory _TopAlbumDto.fromJson(Map<String, dynamic> json) =
      _$TopAlbumDtoImpl.fromJson;

  @override
  String get id;
  @override
  List<dynamic> get image;
  @override
  @JsonKey(ignore: true)
  _$$TopAlbumDtoImplCopyWith<_$TopAlbumDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
