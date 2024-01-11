// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'album_page_presentation.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AlbumPagePresentation {
  AlbumPageInfo get album => throw _privateConstructorUsedError;
  List<AlbumSongPresentation> get songs => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AlbumPagePresentationCopyWith<AlbumPagePresentation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AlbumPagePresentationCopyWith<$Res> {
  factory $AlbumPagePresentationCopyWith(AlbumPagePresentation value,
          $Res Function(AlbumPagePresentation) then) =
      _$AlbumPagePresentationCopyWithImpl<$Res, AlbumPagePresentation>;
  @useResult
  $Res call({AlbumPageInfo album, List<AlbumSongPresentation> songs});

  $AlbumPageInfoCopyWith<$Res> get album;
}

/// @nodoc
class _$AlbumPagePresentationCopyWithImpl<$Res,
        $Val extends AlbumPagePresentation>
    implements $AlbumPagePresentationCopyWith<$Res> {
  _$AlbumPagePresentationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? album = null,
    Object? songs = null,
  }) {
    return _then(_value.copyWith(
      album: null == album
          ? _value.album
          : album // ignore: cast_nullable_to_non_nullable
              as AlbumPageInfo,
      songs: null == songs
          ? _value.songs
          : songs // ignore: cast_nullable_to_non_nullable
              as List<AlbumSongPresentation>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AlbumPageInfoCopyWith<$Res> get album {
    return $AlbumPageInfoCopyWith<$Res>(_value.album, (value) {
      return _then(_value.copyWith(album: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AlbumPagePresentationImplCopyWith<$Res>
    implements $AlbumPagePresentationCopyWith<$Res> {
  factory _$$AlbumPagePresentationImplCopyWith(
          _$AlbumPagePresentationImpl value,
          $Res Function(_$AlbumPagePresentationImpl) then) =
      __$$AlbumPagePresentationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AlbumPageInfo album, List<AlbumSongPresentation> songs});

  @override
  $AlbumPageInfoCopyWith<$Res> get album;
}

/// @nodoc
class __$$AlbumPagePresentationImplCopyWithImpl<$Res>
    extends _$AlbumPagePresentationCopyWithImpl<$Res,
        _$AlbumPagePresentationImpl>
    implements _$$AlbumPagePresentationImplCopyWith<$Res> {
  __$$AlbumPagePresentationImplCopyWithImpl(_$AlbumPagePresentationImpl _value,
      $Res Function(_$AlbumPagePresentationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? album = null,
    Object? songs = null,
  }) {
    return _then(_$AlbumPagePresentationImpl(
      album: null == album
          ? _value.album
          : album // ignore: cast_nullable_to_non_nullable
              as AlbumPageInfo,
      songs: null == songs
          ? _value._songs
          : songs // ignore: cast_nullable_to_non_nullable
              as List<AlbumSongPresentation>,
    ));
  }
}

/// @nodoc

class _$AlbumPagePresentationImpl
    with DiagnosticableTreeMixin
    implements _AlbumPagePresentation {
  const _$AlbumPagePresentationImpl(
      {required this.album, required final List<AlbumSongPresentation> songs})
      : _songs = songs;

  @override
  final AlbumPageInfo album;
  final List<AlbumSongPresentation> _songs;
  @override
  List<AlbumSongPresentation> get songs {
    if (_songs is EqualUnmodifiableListView) return _songs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_songs);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AlbumPagePresentation(album: $album, songs: $songs)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AlbumPagePresentation'))
      ..add(DiagnosticsProperty('album', album))
      ..add(DiagnosticsProperty('songs', songs));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AlbumPagePresentationImpl &&
            (identical(other.album, album) || other.album == album) &&
            const DeepCollectionEquality().equals(other._songs, _songs));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, album, const DeepCollectionEquality().hash(_songs));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AlbumPagePresentationImplCopyWith<_$AlbumPagePresentationImpl>
      get copyWith => __$$AlbumPagePresentationImplCopyWithImpl<
          _$AlbumPagePresentationImpl>(this, _$identity);
}

abstract class _AlbumPagePresentation implements AlbumPagePresentation {
  const factory _AlbumPagePresentation(
          {required final AlbumPageInfo album,
          required final List<AlbumSongPresentation> songs}) =
      _$AlbumPagePresentationImpl;

  @override
  AlbumPageInfo get album;
  @override
  List<AlbumSongPresentation> get songs;
  @override
  @JsonKey(ignore: true)
  _$$AlbumPagePresentationImplCopyWith<_$AlbumPagePresentationImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AlbumPageInfo {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  List<int> get image => throw _privateConstructorUsedError;
  String get duration => throw _privateConstructorUsedError;
  String get totalSongs => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AlbumPageInfoCopyWith<AlbumPageInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AlbumPageInfoCopyWith<$Res> {
  factory $AlbumPageInfoCopyWith(
          AlbumPageInfo value, $Res Function(AlbumPageInfo) then) =
      _$AlbumPageInfoCopyWithImpl<$Res, AlbumPageInfo>;
  @useResult
  $Res call(
      {String id,
      String name,
      List<int> image,
      String duration,
      String totalSongs});
}

/// @nodoc
class _$AlbumPageInfoCopyWithImpl<$Res, $Val extends AlbumPageInfo>
    implements $AlbumPageInfoCopyWith<$Res> {
  _$AlbumPageInfoCopyWithImpl(this._value, this._then);

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
    Object? totalSongs = null,
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
      totalSongs: null == totalSongs
          ? _value.totalSongs
          : totalSongs // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AlbumPageInfoImplCopyWith<$Res>
    implements $AlbumPageInfoCopyWith<$Res> {
  factory _$$AlbumPageInfoImplCopyWith(
          _$AlbumPageInfoImpl value, $Res Function(_$AlbumPageInfoImpl) then) =
      __$$AlbumPageInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      List<int> image,
      String duration,
      String totalSongs});
}

/// @nodoc
class __$$AlbumPageInfoImplCopyWithImpl<$Res>
    extends _$AlbumPageInfoCopyWithImpl<$Res, _$AlbumPageInfoImpl>
    implements _$$AlbumPageInfoImplCopyWith<$Res> {
  __$$AlbumPageInfoImplCopyWithImpl(
      _$AlbumPageInfoImpl _value, $Res Function(_$AlbumPageInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? image = null,
    Object? duration = null,
    Object? totalSongs = null,
  }) {
    return _then(_$AlbumPageInfoImpl(
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
      totalSongs: null == totalSongs
          ? _value.totalSongs
          : totalSongs // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AlbumPageInfoImpl
    with DiagnosticableTreeMixin
    implements _AlbumPageInfo {
  const _$AlbumPageInfoImpl(
      {required this.id,
      required this.name,
      required final List<int> image,
      required this.duration,
      required this.totalSongs})
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
  final String totalSongs;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AlbumPageInfo(id: $id, name: $name, image: $image, duration: $duration, totalSongs: $totalSongs)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AlbumPageInfo'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('image', image))
      ..add(DiagnosticsProperty('duration', duration))
      ..add(DiagnosticsProperty('totalSongs', totalSongs));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AlbumPageInfoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._image, _image) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.totalSongs, totalSongs) ||
                other.totalSongs == totalSongs));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name,
      const DeepCollectionEquality().hash(_image), duration, totalSongs);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AlbumPageInfoImplCopyWith<_$AlbumPageInfoImpl> get copyWith =>
      __$$AlbumPageInfoImplCopyWithImpl<_$AlbumPageInfoImpl>(this, _$identity);
}

abstract class _AlbumPageInfo implements AlbumPageInfo {
  const factory _AlbumPageInfo(
      {required final String id,
      required final String name,
      required final List<int> image,
      required final String duration,
      required final String totalSongs}) = _$AlbumPageInfoImpl;

  @override
  String get id;
  @override
  String get name;
  @override
  List<int> get image;
  @override
  String get duration;
  @override
  String get totalSongs;
  @override
  @JsonKey(ignore: true)
  _$$AlbumPageInfoImplCopyWith<_$AlbumPageInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AlbumSongPresentation {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AlbumSongPresentationCopyWith<AlbumSongPresentation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AlbumSongPresentationCopyWith<$Res> {
  factory $AlbumSongPresentationCopyWith(AlbumSongPresentation value,
          $Res Function(AlbumSongPresentation) then) =
      _$AlbumSongPresentationCopyWithImpl<$Res, AlbumSongPresentation>;
  @useResult
  $Res call({String id, String name});
}

/// @nodoc
class _$AlbumSongPresentationCopyWithImpl<$Res,
        $Val extends AlbumSongPresentation>
    implements $AlbumSongPresentationCopyWith<$Res> {
  _$AlbumSongPresentationCopyWithImpl(this._value, this._then);

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
abstract class _$$AlbumSongPresentationImplCopyWith<$Res>
    implements $AlbumSongPresentationCopyWith<$Res> {
  factory _$$AlbumSongPresentationImplCopyWith(
          _$AlbumSongPresentationImpl value,
          $Res Function(_$AlbumSongPresentationImpl) then) =
      __$$AlbumSongPresentationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name});
}

/// @nodoc
class __$$AlbumSongPresentationImplCopyWithImpl<$Res>
    extends _$AlbumSongPresentationCopyWithImpl<$Res,
        _$AlbumSongPresentationImpl>
    implements _$$AlbumSongPresentationImplCopyWith<$Res> {
  __$$AlbumSongPresentationImplCopyWithImpl(_$AlbumSongPresentationImpl _value,
      $Res Function(_$AlbumSongPresentationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$AlbumSongPresentationImpl(
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

class _$AlbumSongPresentationImpl
    with DiagnosticableTreeMixin
    implements _AlbumSongPresentation {
  const _$AlbumSongPresentationImpl({required this.id, required this.name});

  @override
  final String id;
  @override
  final String name;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AlbumSongPresentation(id: $id, name: $name)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AlbumSongPresentation'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AlbumSongPresentationImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AlbumSongPresentationImplCopyWith<_$AlbumSongPresentationImpl>
      get copyWith => __$$AlbumSongPresentationImplCopyWithImpl<
          _$AlbumSongPresentationImpl>(this, _$identity);
}

abstract class _AlbumSongPresentation implements AlbumSongPresentation {
  const factory _AlbumSongPresentation(
      {required final String id,
      required final String name}) = _$AlbumSongPresentationImpl;

  @override
  String get id;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$AlbumSongPresentationImplCopyWith<_$AlbumSongPresentationImpl>
      get copyWith => throw _privateConstructorUsedError;
}
