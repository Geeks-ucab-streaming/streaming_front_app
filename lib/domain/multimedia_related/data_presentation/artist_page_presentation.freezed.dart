// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'artist_page_presentation.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ArtistPagePresentation {
  ArtistPageInfo get artist => throw _privateConstructorUsedError;
  List<ArtistAlbumPresentation> get albums =>
      throw _privateConstructorUsedError;
  List<ArtistSongPresentation> get songs => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ArtistPagePresentationCopyWith<ArtistPagePresentation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArtistPagePresentationCopyWith<$Res> {
  factory $ArtistPagePresentationCopyWith(ArtistPagePresentation value,
          $Res Function(ArtistPagePresentation) then) =
      _$ArtistPagePresentationCopyWithImpl<$Res, ArtistPagePresentation>;
  @useResult
  $Res call(
      {ArtistPageInfo artist,
      List<ArtistAlbumPresentation> albums,
      List<ArtistSongPresentation> songs});

  $ArtistPageInfoCopyWith<$Res> get artist;
}

/// @nodoc
class _$ArtistPagePresentationCopyWithImpl<$Res,
        $Val extends ArtistPagePresentation>
    implements $ArtistPagePresentationCopyWith<$Res> {
  _$ArtistPagePresentationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? artist = null,
    Object? albums = null,
    Object? songs = null,
  }) {
    return _then(_value.copyWith(
      artist: null == artist
          ? _value.artist
          : artist // ignore: cast_nullable_to_non_nullable
              as ArtistPageInfo,
      albums: null == albums
          ? _value.albums
          : albums // ignore: cast_nullable_to_non_nullable
              as List<ArtistAlbumPresentation>,
      songs: null == songs
          ? _value.songs
          : songs // ignore: cast_nullable_to_non_nullable
              as List<ArtistSongPresentation>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ArtistPageInfoCopyWith<$Res> get artist {
    return $ArtistPageInfoCopyWith<$Res>(_value.artist, (value) {
      return _then(_value.copyWith(artist: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ArtistPagePresentationImplCopyWith<$Res>
    implements $ArtistPagePresentationCopyWith<$Res> {
  factory _$$ArtistPagePresentationImplCopyWith(
          _$ArtistPagePresentationImpl value,
          $Res Function(_$ArtistPagePresentationImpl) then) =
      __$$ArtistPagePresentationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ArtistPageInfo artist,
      List<ArtistAlbumPresentation> albums,
      List<ArtistSongPresentation> songs});

  @override
  $ArtistPageInfoCopyWith<$Res> get artist;
}

/// @nodoc
class __$$ArtistPagePresentationImplCopyWithImpl<$Res>
    extends _$ArtistPagePresentationCopyWithImpl<$Res,
        _$ArtistPagePresentationImpl>
    implements _$$ArtistPagePresentationImplCopyWith<$Res> {
  __$$ArtistPagePresentationImplCopyWithImpl(
      _$ArtistPagePresentationImpl _value,
      $Res Function(_$ArtistPagePresentationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? artist = null,
    Object? albums = null,
    Object? songs = null,
  }) {
    return _then(_$ArtistPagePresentationImpl(
      artist: null == artist
          ? _value.artist
          : artist // ignore: cast_nullable_to_non_nullable
              as ArtistPageInfo,
      albums: null == albums
          ? _value._albums
          : albums // ignore: cast_nullable_to_non_nullable
              as List<ArtistAlbumPresentation>,
      songs: null == songs
          ? _value._songs
          : songs // ignore: cast_nullable_to_non_nullable
              as List<ArtistSongPresentation>,
    ));
  }
}

/// @nodoc

class _$ArtistPagePresentationImpl
    with DiagnosticableTreeMixin
    implements _ArtistPagePresentation {
  const _$ArtistPagePresentationImpl(
      {required this.artist,
      required final List<ArtistAlbumPresentation> albums,
      required final List<ArtistSongPresentation> songs})
      : _albums = albums,
        _songs = songs;

  @override
  final ArtistPageInfo artist;
  final List<ArtistAlbumPresentation> _albums;
  @override
  List<ArtistAlbumPresentation> get albums {
    if (_albums is EqualUnmodifiableListView) return _albums;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_albums);
  }

  final List<ArtistSongPresentation> _songs;
  @override
  List<ArtistSongPresentation> get songs {
    if (_songs is EqualUnmodifiableListView) return _songs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_songs);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ArtistPagePresentation(artist: $artist, albums: $albums, songs: $songs)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ArtistPagePresentation'))
      ..add(DiagnosticsProperty('artist', artist))
      ..add(DiagnosticsProperty('albums', albums))
      ..add(DiagnosticsProperty('songs', songs));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ArtistPagePresentationImpl &&
            (identical(other.artist, artist) || other.artist == artist) &&
            const DeepCollectionEquality().equals(other._albums, _albums) &&
            const DeepCollectionEquality().equals(other._songs, _songs));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      artist,
      const DeepCollectionEquality().hash(_albums),
      const DeepCollectionEquality().hash(_songs));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ArtistPagePresentationImplCopyWith<_$ArtistPagePresentationImpl>
      get copyWith => __$$ArtistPagePresentationImplCopyWithImpl<
          _$ArtistPagePresentationImpl>(this, _$identity);
}

abstract class _ArtistPagePresentation implements ArtistPagePresentation {
  const factory _ArtistPagePresentation(
          {required final ArtistPageInfo artist,
          required final List<ArtistAlbumPresentation> albums,
          required final List<ArtistSongPresentation> songs}) =
      _$ArtistPagePresentationImpl;

  @override
  ArtistPageInfo get artist;
  @override
  List<ArtistAlbumPresentation> get albums;
  @override
  List<ArtistSongPresentation> get songs;
  @override
  @JsonKey(ignore: true)
  _$$ArtistPagePresentationImplCopyWith<_$ArtistPagePresentationImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ArtistPageInfo {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get genre => throw _privateConstructorUsedError;
  List<int> get image => throw _privateConstructorUsedError;
  String get totalAmountAlbums => throw _privateConstructorUsedError;
  String get totalSongsAlbums => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ArtistPageInfoCopyWith<ArtistPageInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArtistPageInfoCopyWith<$Res> {
  factory $ArtistPageInfoCopyWith(
          ArtistPageInfo value, $Res Function(ArtistPageInfo) then) =
      _$ArtistPageInfoCopyWithImpl<$Res, ArtistPageInfo>;
  @useResult
  $Res call(
      {String id,
      String name,
      String genre,
      List<int> image,
      String totalAmountAlbums,
      String totalSongsAlbums});
}

/// @nodoc
class _$ArtistPageInfoCopyWithImpl<$Res, $Val extends ArtistPageInfo>
    implements $ArtistPageInfoCopyWith<$Res> {
  _$ArtistPageInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? genre = null,
    Object? image = null,
    Object? totalAmountAlbums = null,
    Object? totalSongsAlbums = null,
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
      genre: null == genre
          ? _value.genre
          : genre // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as List<int>,
      totalAmountAlbums: null == totalAmountAlbums
          ? _value.totalAmountAlbums
          : totalAmountAlbums // ignore: cast_nullable_to_non_nullable
              as String,
      totalSongsAlbums: null == totalSongsAlbums
          ? _value.totalSongsAlbums
          : totalSongsAlbums // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ArtistPageInfoImplCopyWith<$Res>
    implements $ArtistPageInfoCopyWith<$Res> {
  factory _$$ArtistPageInfoImplCopyWith(_$ArtistPageInfoImpl value,
          $Res Function(_$ArtistPageInfoImpl) then) =
      __$$ArtistPageInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String genre,
      List<int> image,
      String totalAmountAlbums,
      String totalSongsAlbums});
}

/// @nodoc
class __$$ArtistPageInfoImplCopyWithImpl<$Res>
    extends _$ArtistPageInfoCopyWithImpl<$Res, _$ArtistPageInfoImpl>
    implements _$$ArtistPageInfoImplCopyWith<$Res> {
  __$$ArtistPageInfoImplCopyWithImpl(
      _$ArtistPageInfoImpl _value, $Res Function(_$ArtistPageInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? genre = null,
    Object? image = null,
    Object? totalAmountAlbums = null,
    Object? totalSongsAlbums = null,
  }) {
    return _then(_$ArtistPageInfoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      genre: null == genre
          ? _value.genre
          : genre // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value._image
          : image // ignore: cast_nullable_to_non_nullable
              as List<int>,
      totalAmountAlbums: null == totalAmountAlbums
          ? _value.totalAmountAlbums
          : totalAmountAlbums // ignore: cast_nullable_to_non_nullable
              as String,
      totalSongsAlbums: null == totalSongsAlbums
          ? _value.totalSongsAlbums
          : totalSongsAlbums // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ArtistPageInfoImpl
    with DiagnosticableTreeMixin
    implements _ArtistPageInfo {
  const _$ArtistPageInfoImpl(
      {required this.id,
      required this.name,
      required this.genre,
      required final List<int> image,
      required this.totalAmountAlbums,
      required this.totalSongsAlbums})
      : _image = image;

  @override
  final String id;
  @override
  final String name;
  @override
  final String genre;
  final List<int> _image;
  @override
  List<int> get image {
    if (_image is EqualUnmodifiableListView) return _image;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_image);
  }

  @override
  final String totalAmountAlbums;
  @override
  final String totalSongsAlbums;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ArtistPageInfo(id: $id, name: $name, genre: $genre, image: $image, totalAmountAlbums: $totalAmountAlbums, totalSongsAlbums: $totalSongsAlbums)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ArtistPageInfo'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('genre', genre))
      ..add(DiagnosticsProperty('image', image))
      ..add(DiagnosticsProperty('totalAmountAlbums', totalAmountAlbums))
      ..add(DiagnosticsProperty('totalSongsAlbums', totalSongsAlbums));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ArtistPageInfoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.genre, genre) || other.genre == genre) &&
            const DeepCollectionEquality().equals(other._image, _image) &&
            (identical(other.totalAmountAlbums, totalAmountAlbums) ||
                other.totalAmountAlbums == totalAmountAlbums) &&
            (identical(other.totalSongsAlbums, totalSongsAlbums) ||
                other.totalSongsAlbums == totalSongsAlbums));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      genre,
      const DeepCollectionEquality().hash(_image),
      totalAmountAlbums,
      totalSongsAlbums);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ArtistPageInfoImplCopyWith<_$ArtistPageInfoImpl> get copyWith =>
      __$$ArtistPageInfoImplCopyWithImpl<_$ArtistPageInfoImpl>(
          this, _$identity);
}

abstract class _ArtistPageInfo implements ArtistPageInfo {
  const factory _ArtistPageInfo(
      {required final String id,
      required final String name,
      required final String genre,
      required final List<int> image,
      required final String totalAmountAlbums,
      required final String totalSongsAlbums}) = _$ArtistPageInfoImpl;

  @override
  String get id;
  @override
  String get name;
  @override
  String get genre;
  @override
  List<int> get image;
  @override
  String get totalAmountAlbums;
  @override
  String get totalSongsAlbums;
  @override
  @JsonKey(ignore: true)
  _$$ArtistPageInfoImplCopyWith<_$ArtistPageInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ArtistAlbumPresentation {
  String get id => throw _privateConstructorUsedError;
  List<int> get image => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ArtistAlbumPresentationCopyWith<ArtistAlbumPresentation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArtistAlbumPresentationCopyWith<$Res> {
  factory $ArtistAlbumPresentationCopyWith(ArtistAlbumPresentation value,
          $Res Function(ArtistAlbumPresentation) then) =
      _$ArtistAlbumPresentationCopyWithImpl<$Res, ArtistAlbumPresentation>;
  @useResult
  $Res call({String id, List<int> image});
}

/// @nodoc
class _$ArtistAlbumPresentationCopyWithImpl<$Res,
        $Val extends ArtistAlbumPresentation>
    implements $ArtistAlbumPresentationCopyWith<$Res> {
  _$ArtistAlbumPresentationCopyWithImpl(this._value, this._then);

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
              as List<int>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ArtistAlbumPresentationImplCopyWith<$Res>
    implements $ArtistAlbumPresentationCopyWith<$Res> {
  factory _$$ArtistAlbumPresentationImplCopyWith(
          _$ArtistAlbumPresentationImpl value,
          $Res Function(_$ArtistAlbumPresentationImpl) then) =
      __$$ArtistAlbumPresentationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, List<int> image});
}

/// @nodoc
class __$$ArtistAlbumPresentationImplCopyWithImpl<$Res>
    extends _$ArtistAlbumPresentationCopyWithImpl<$Res,
        _$ArtistAlbumPresentationImpl>
    implements _$$ArtistAlbumPresentationImplCopyWith<$Res> {
  __$$ArtistAlbumPresentationImplCopyWithImpl(
      _$ArtistAlbumPresentationImpl _value,
      $Res Function(_$ArtistAlbumPresentationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? image = null,
  }) {
    return _then(_$ArtistAlbumPresentationImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value._image
          : image // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc

class _$ArtistAlbumPresentationImpl
    with DiagnosticableTreeMixin
    implements _ArtistAlbumPresentation {
  const _$ArtistAlbumPresentationImpl(
      {required this.id, required final List<int> image})
      : _image = image;

  @override
  final String id;
  final List<int> _image;
  @override
  List<int> get image {
    if (_image is EqualUnmodifiableListView) return _image;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_image);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ArtistAlbumPresentation(id: $id, image: $image)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ArtistAlbumPresentation'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('image', image));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ArtistAlbumPresentationImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._image, _image));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, const DeepCollectionEquality().hash(_image));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ArtistAlbumPresentationImplCopyWith<_$ArtistAlbumPresentationImpl>
      get copyWith => __$$ArtistAlbumPresentationImplCopyWithImpl<
          _$ArtistAlbumPresentationImpl>(this, _$identity);
}

abstract class _ArtistAlbumPresentation implements ArtistAlbumPresentation {
  const factory _ArtistAlbumPresentation(
      {required final String id,
      required final List<int> image}) = _$ArtistAlbumPresentationImpl;

  @override
  String get id;
  @override
  List<int> get image;
  @override
  @JsonKey(ignore: true)
  _$$ArtistAlbumPresentationImplCopyWith<_$ArtistAlbumPresentationImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ArtistSongPresentation {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get composer => throw _privateConstructorUsedError;
  String get duration => throw _privateConstructorUsedError;
  List<int> get image => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ArtistSongPresentationCopyWith<ArtistSongPresentation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArtistSongPresentationCopyWith<$Res> {
  factory $ArtistSongPresentationCopyWith(ArtistSongPresentation value,
          $Res Function(ArtistSongPresentation) then) =
      _$ArtistSongPresentationCopyWithImpl<$Res, ArtistSongPresentation>;
  @useResult
  $Res call(
      {String id,
      String name,
      String composer,
      String duration,
      List<int> image});
}

/// @nodoc
class _$ArtistSongPresentationCopyWithImpl<$Res,
        $Val extends ArtistSongPresentation>
    implements $ArtistSongPresentationCopyWith<$Res> {
  _$ArtistSongPresentationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? composer = null,
    Object? duration = null,
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
      composer: null == composer
          ? _value.composer
          : composer // ignore: cast_nullable_to_non_nullable
              as String,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ArtistSongPresentationImplCopyWith<$Res>
    implements $ArtistSongPresentationCopyWith<$Res> {
  factory _$$ArtistSongPresentationImplCopyWith(
          _$ArtistSongPresentationImpl value,
          $Res Function(_$ArtistSongPresentationImpl) then) =
      __$$ArtistSongPresentationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String composer,
      String duration,
      List<int> image});
}

/// @nodoc
class __$$ArtistSongPresentationImplCopyWithImpl<$Res>
    extends _$ArtistSongPresentationCopyWithImpl<$Res,
        _$ArtistSongPresentationImpl>
    implements _$$ArtistSongPresentationImplCopyWith<$Res> {
  __$$ArtistSongPresentationImplCopyWithImpl(
      _$ArtistSongPresentationImpl _value,
      $Res Function(_$ArtistSongPresentationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? composer = null,
    Object? duration = null,
    Object? image = null,
  }) {
    return _then(_$ArtistSongPresentationImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      composer: null == composer
          ? _value.composer
          : composer // ignore: cast_nullable_to_non_nullable
              as String,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value._image
          : image // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc

class _$ArtistSongPresentationImpl
    with DiagnosticableTreeMixin
    implements _ArtistSongPresentation {
  const _$ArtistSongPresentationImpl(
      {required this.id,
      required this.name,
      required this.composer,
      required this.duration,
      required final List<int> image})
      : _image = image;

  @override
  final String id;
  @override
  final String name;
  @override
  final String composer;
  @override
  final String duration;
  final List<int> _image;
  @override
  List<int> get image {
    if (_image is EqualUnmodifiableListView) return _image;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_image);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ArtistSongPresentation(id: $id, name: $name, composer: $composer, duration: $duration, image: $image)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ArtistSongPresentation'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('composer', composer))
      ..add(DiagnosticsProperty('duration', duration))
      ..add(DiagnosticsProperty('image', image));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ArtistSongPresentationImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.composer, composer) ||
                other.composer == composer) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            const DeepCollectionEquality().equals(other._image, _image));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name, composer, duration,
      const DeepCollectionEquality().hash(_image));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ArtistSongPresentationImplCopyWith<_$ArtistSongPresentationImpl>
      get copyWith => __$$ArtistSongPresentationImplCopyWithImpl<
          _$ArtistSongPresentationImpl>(this, _$identity);
}

abstract class _ArtistSongPresentation implements ArtistSongPresentation {
  const factory _ArtistSongPresentation(
      {required final String id,
      required final String name,
      required final String composer,
      required final String duration,
      required final List<int> image}) = _$ArtistSongPresentationImpl;

  @override
  String get id;
  @override
  String get name;
  @override
  String get composer;
  @override
  String get duration;
  @override
  List<int> get image;
  @override
  @JsonKey(ignore: true)
  _$$ArtistSongPresentationImplCopyWith<_$ArtistSongPresentationImpl>
      get copyWith => throw _privateConstructorUsedError;
}
