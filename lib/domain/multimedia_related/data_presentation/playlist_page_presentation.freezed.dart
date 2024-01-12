// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'playlist_page_presentation.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PlaylistPagePresentation {
  PlaylistPageInfo get playlist => throw _privateConstructorUsedError;
  List<PlaylistSongPresentation> get songs =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PlaylistPagePresentationCopyWith<PlaylistPagePresentation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaylistPagePresentationCopyWith<$Res> {
  factory $PlaylistPagePresentationCopyWith(PlaylistPagePresentation value,
          $Res Function(PlaylistPagePresentation) then) =
      _$PlaylistPagePresentationCopyWithImpl<$Res, PlaylistPagePresentation>;
  @useResult
  $Res call({PlaylistPageInfo playlist, List<PlaylistSongPresentation> songs});

  $PlaylistPageInfoCopyWith<$Res> get playlist;
}

/// @nodoc
class _$PlaylistPagePresentationCopyWithImpl<$Res,
        $Val extends PlaylistPagePresentation>
    implements $PlaylistPagePresentationCopyWith<$Res> {
  _$PlaylistPagePresentationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? playlist = null,
    Object? songs = null,
  }) {
    return _then(_value.copyWith(
      playlist: null == playlist
          ? _value.playlist
          : playlist // ignore: cast_nullable_to_non_nullable
              as PlaylistPageInfo,
      songs: null == songs
          ? _value.songs
          : songs // ignore: cast_nullable_to_non_nullable
              as List<PlaylistSongPresentation>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PlaylistPageInfoCopyWith<$Res> get playlist {
    return $PlaylistPageInfoCopyWith<$Res>(_value.playlist, (value) {
      return _then(_value.copyWith(playlist: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PlaylistPagePresentationImplCopyWith<$Res>
    implements $PlaylistPagePresentationCopyWith<$Res> {
  factory _$$PlaylistPagePresentationImplCopyWith(
          _$PlaylistPagePresentationImpl value,
          $Res Function(_$PlaylistPagePresentationImpl) then) =
      __$$PlaylistPagePresentationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PlaylistPageInfo playlist, List<PlaylistSongPresentation> songs});

  @override
  $PlaylistPageInfoCopyWith<$Res> get playlist;
}

/// @nodoc
class __$$PlaylistPagePresentationImplCopyWithImpl<$Res>
    extends _$PlaylistPagePresentationCopyWithImpl<$Res,
        _$PlaylistPagePresentationImpl>
    implements _$$PlaylistPagePresentationImplCopyWith<$Res> {
  __$$PlaylistPagePresentationImplCopyWithImpl(
      _$PlaylistPagePresentationImpl _value,
      $Res Function(_$PlaylistPagePresentationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? playlist = null,
    Object? songs = null,
  }) {
    return _then(_$PlaylistPagePresentationImpl(
      playlist: null == playlist
          ? _value.playlist
          : playlist // ignore: cast_nullable_to_non_nullable
              as PlaylistPageInfo,
      songs: null == songs
          ? _value._songs
          : songs // ignore: cast_nullable_to_non_nullable
              as List<PlaylistSongPresentation>,
    ));
  }
}

/// @nodoc

class _$PlaylistPagePresentationImpl
    with DiagnosticableTreeMixin
    implements _PlaylistPagePresentation {
  const _$PlaylistPagePresentationImpl(
      {required this.playlist,
      required final List<PlaylistSongPresentation> songs})
      : _songs = songs;

  @override
  final PlaylistPageInfo playlist;
  final List<PlaylistSongPresentation> _songs;
  @override
  List<PlaylistSongPresentation> get songs {
    if (_songs is EqualUnmodifiableListView) return _songs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_songs);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PlaylistPagePresentation(playlist: $playlist, songs: $songs)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PlaylistPagePresentation'))
      ..add(DiagnosticsProperty('playlist', playlist))
      ..add(DiagnosticsProperty('songs', songs));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlaylistPagePresentationImpl &&
            (identical(other.playlist, playlist) ||
                other.playlist == playlist) &&
            const DeepCollectionEquality().equals(other._songs, _songs));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, playlist, const DeepCollectionEquality().hash(_songs));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PlaylistPagePresentationImplCopyWith<_$PlaylistPagePresentationImpl>
      get copyWith => __$$PlaylistPagePresentationImplCopyWithImpl<
          _$PlaylistPagePresentationImpl>(this, _$identity);
}

abstract class _PlaylistPagePresentation implements PlaylistPagePresentation {
  const factory _PlaylistPagePresentation(
          {required final PlaylistPageInfo playlist,
          required final List<PlaylistSongPresentation> songs}) =
      _$PlaylistPagePresentationImpl;

  @override
  PlaylistPageInfo get playlist;
  @override
  List<PlaylistSongPresentation> get songs;
  @override
  @JsonKey(ignore: true)
  _$$PlaylistPagePresentationImplCopyWith<_$PlaylistPagePresentationImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PlaylistPageInfo {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  List<int> get image => throw _privateConstructorUsedError;
  String get duration => throw _privateConstructorUsedError;
  String get totalPlays => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PlaylistPageInfoCopyWith<PlaylistPageInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaylistPageInfoCopyWith<$Res> {
  factory $PlaylistPageInfoCopyWith(
          PlaylistPageInfo value, $Res Function(PlaylistPageInfo) then) =
      _$PlaylistPageInfoCopyWithImpl<$Res, PlaylistPageInfo>;
  @useResult
  $Res call(
      {String id,
      String name,
      List<int> image,
      String duration,
      String totalPlays});
}

/// @nodoc
class _$PlaylistPageInfoCopyWithImpl<$Res, $Val extends PlaylistPageInfo>
    implements $PlaylistPageInfoCopyWith<$Res> {
  _$PlaylistPageInfoCopyWithImpl(this._value, this._then);

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
    Object? totalPlays = null,
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
              as List<int>,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as String,
      totalPlays: null == totalPlays
          ? _value.totalPlays
          : totalPlays // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PlaylistPageInfoImplCopyWith<$Res>
    implements $PlaylistPageInfoCopyWith<$Res> {
  factory _$$PlaylistPageInfoImplCopyWith(_$PlaylistPageInfoImpl value,
          $Res Function(_$PlaylistPageInfoImpl) then) =
      __$$PlaylistPageInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      List<int> image,
      String duration,
      String totalPlays});
}

/// @nodoc
class __$$PlaylistPageInfoImplCopyWithImpl<$Res>
    extends _$PlaylistPageInfoCopyWithImpl<$Res, _$PlaylistPageInfoImpl>
    implements _$$PlaylistPageInfoImplCopyWith<$Res> {
  __$$PlaylistPageInfoImplCopyWithImpl(_$PlaylistPageInfoImpl _value,
      $Res Function(_$PlaylistPageInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? image = null,
    Object? duration = null,
    Object? totalPlays = null,
  }) {
    return _then(_$PlaylistPageInfoImpl(
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
              as List<int>,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as String,
      totalPlays: null == totalPlays
          ? _value.totalPlays
          : totalPlays // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PlaylistPageInfoImpl
    with DiagnosticableTreeMixin
    implements _PlaylistPageInfo {
  const _$PlaylistPageInfoImpl(
      {required this.id,
      required this.name,
      required final List<int> image,
      required this.duration,
      required this.totalPlays})
      : _image = image;

  @override
  final String id;
  @override
  final String name;
  final List<int> _image;
  @override
  List<int> get image {
    if (_image is EqualUnmodifiableListView) return _image;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_image);
  }

  @override
  final String duration;
  @override
  final String totalPlays;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PlaylistPageInfo(id: $id, name: $name, image: $image, duration: $duration, totalPlays: $totalPlays)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PlaylistPageInfo'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('image', image))
      ..add(DiagnosticsProperty('duration', duration))
      ..add(DiagnosticsProperty('totalPlays', totalPlays));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlaylistPageInfoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._image, _image) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.totalPlays, totalPlays) ||
                other.totalPlays == totalPlays));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name,
      const DeepCollectionEquality().hash(_image), duration, totalPlays);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PlaylistPageInfoImplCopyWith<_$PlaylistPageInfoImpl> get copyWith =>
      __$$PlaylistPageInfoImplCopyWithImpl<_$PlaylistPageInfoImpl>(
          this, _$identity);
}

abstract class _PlaylistPageInfo implements PlaylistPageInfo {
  const factory _PlaylistPageInfo(
      {required final String id,
      required final String name,
      required final List<int> image,
      required final String duration,
      required final String totalPlays}) = _$PlaylistPageInfoImpl;

  @override
  String get id;
  @override
  String get name;
  @override
  List<int> get image;
  @override
  String get duration;
  @override
  String get totalPlays;
  @override
  @JsonKey(ignore: true)
  _$$PlaylistPageInfoImplCopyWith<_$PlaylistPageInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PlaylistSongPresentation {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get duration => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PlaylistSongPresentationCopyWith<PlaylistSongPresentation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaylistSongPresentationCopyWith<$Res> {
  factory $PlaylistSongPresentationCopyWith(PlaylistSongPresentation value,
          $Res Function(PlaylistSongPresentation) then) =
      _$PlaylistSongPresentationCopyWithImpl<$Res, PlaylistSongPresentation>;
  @useResult
  $Res call({String id, String name, String duration});
}

/// @nodoc
class _$PlaylistSongPresentationCopyWithImpl<$Res,
        $Val extends PlaylistSongPresentation>
    implements $PlaylistSongPresentationCopyWith<$Res> {
  _$PlaylistSongPresentationCopyWithImpl(this._value, this._then);

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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PlaylistSongPresentationImplCopyWith<$Res>
    implements $PlaylistSongPresentationCopyWith<$Res> {
  factory _$$PlaylistSongPresentationImplCopyWith(
          _$PlaylistSongPresentationImpl value,
          $Res Function(_$PlaylistSongPresentationImpl) then) =
      __$$PlaylistSongPresentationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name, String duration});
}

/// @nodoc
class __$$PlaylistSongPresentationImplCopyWithImpl<$Res>
    extends _$PlaylistSongPresentationCopyWithImpl<$Res,
        _$PlaylistSongPresentationImpl>
    implements _$$PlaylistSongPresentationImplCopyWith<$Res> {
  __$$PlaylistSongPresentationImplCopyWithImpl(
      _$PlaylistSongPresentationImpl _value,
      $Res Function(_$PlaylistSongPresentationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? duration = null,
  }) {
    return _then(_$PlaylistSongPresentationImpl(
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
    ));
  }
}

/// @nodoc

class _$PlaylistSongPresentationImpl
    with DiagnosticableTreeMixin
    implements _PlaylistSongPresentation {
  const _$PlaylistSongPresentationImpl(
      {required this.id, required this.name, required this.duration});

  @override
  final String id;
  @override
  final String name;
  @override
  final String duration;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PlaylistSongPresentation(id: $id, name: $name, duration: $duration)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PlaylistSongPresentation'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('duration', duration));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlaylistSongPresentationImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.duration, duration) ||
                other.duration == duration));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name, duration);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PlaylistSongPresentationImplCopyWith<_$PlaylistSongPresentationImpl>
      get copyWith => __$$PlaylistSongPresentationImplCopyWithImpl<
          _$PlaylistSongPresentationImpl>(this, _$identity);
}

abstract class _PlaylistSongPresentation implements PlaylistSongPresentation {
  const factory _PlaylistSongPresentation(
      {required final String id,
      required final String name,
      required final String duration}) = _$PlaylistSongPresentationImpl;

  @override
  String get id;
  @override
  String get name;
  @override
  String get duration;
  @override
  @JsonKey(ignore: true)
  _$$PlaylistSongPresentationImplCopyWith<_$PlaylistSongPresentationImpl>
      get copyWith => throw _privateConstructorUsedError;
}
