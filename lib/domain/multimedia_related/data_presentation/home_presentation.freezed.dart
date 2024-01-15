// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_presentation.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomePresentation {
  HomeAdvertisement get advertisement => throw _privateConstructorUsedError;
  List<HomePlaylist> get playlists => throw _privateConstructorUsedError;
  List<HomeAlbum> get albums => throw _privateConstructorUsedError;
  List<HomeArtist> get artists => throw _privateConstructorUsedError;
  List<HomeTrackListElement> get trackList =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomePresentationCopyWith<HomePresentation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomePresentationCopyWith<$Res> {
  factory $HomePresentationCopyWith(
          HomePresentation value, $Res Function(HomePresentation) then) =
      _$HomePresentationCopyWithImpl<$Res, HomePresentation>;
  @useResult
  $Res call(
      {HomeAdvertisement advertisement,
      List<HomePlaylist> playlists,
      List<HomeAlbum> albums,
      List<HomeArtist> artists,
      List<HomeTrackListElement> trackList});

  $HomeAdvertisementCopyWith<$Res> get advertisement;
}

/// @nodoc
class _$HomePresentationCopyWithImpl<$Res, $Val extends HomePresentation>
    implements $HomePresentationCopyWith<$Res> {
  _$HomePresentationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? advertisement = null,
    Object? playlists = null,
    Object? albums = null,
    Object? artists = null,
    Object? trackList = null,
  }) {
    return _then(_value.copyWith(
      advertisement: null == advertisement
          ? _value.advertisement
          : advertisement // ignore: cast_nullable_to_non_nullable
              as HomeAdvertisement,
      playlists: null == playlists
          ? _value.playlists
          : playlists // ignore: cast_nullable_to_non_nullable
              as List<HomePlaylist>,
      albums: null == albums
          ? _value.albums
          : albums // ignore: cast_nullable_to_non_nullable
              as List<HomeAlbum>,
      artists: null == artists
          ? _value.artists
          : artists // ignore: cast_nullable_to_non_nullable
              as List<HomeArtist>,
      trackList: null == trackList
          ? _value.trackList
          : trackList // ignore: cast_nullable_to_non_nullable
              as List<HomeTrackListElement>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $HomeAdvertisementCopyWith<$Res> get advertisement {
    return $HomeAdvertisementCopyWith<$Res>(_value.advertisement, (value) {
      return _then(_value.copyWith(advertisement: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HomePresentationImplCopyWith<$Res>
    implements $HomePresentationCopyWith<$Res> {
  factory _$$HomePresentationImplCopyWith(_$HomePresentationImpl value,
          $Res Function(_$HomePresentationImpl) then) =
      __$$HomePresentationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {HomeAdvertisement advertisement,
      List<HomePlaylist> playlists,
      List<HomeAlbum> albums,
      List<HomeArtist> artists,
      List<HomeTrackListElement> trackList});

  @override
  $HomeAdvertisementCopyWith<$Res> get advertisement;
}

/// @nodoc
class __$$HomePresentationImplCopyWithImpl<$Res>
    extends _$HomePresentationCopyWithImpl<$Res, _$HomePresentationImpl>
    implements _$$HomePresentationImplCopyWith<$Res> {
  __$$HomePresentationImplCopyWithImpl(_$HomePresentationImpl _value,
      $Res Function(_$HomePresentationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? advertisement = null,
    Object? playlists = null,
    Object? albums = null,
    Object? artists = null,
    Object? trackList = null,
  }) {
    return _then(_$HomePresentationImpl(
      advertisement: null == advertisement
          ? _value.advertisement
          : advertisement // ignore: cast_nullable_to_non_nullable
              as HomeAdvertisement,
      playlists: null == playlists
          ? _value._playlists
          : playlists // ignore: cast_nullable_to_non_nullable
              as List<HomePlaylist>,
      albums: null == albums
          ? _value._albums
          : albums // ignore: cast_nullable_to_non_nullable
              as List<HomeAlbum>,
      artists: null == artists
          ? _value._artists
          : artists // ignore: cast_nullable_to_non_nullable
              as List<HomeArtist>,
      trackList: null == trackList
          ? _value._trackList
          : trackList // ignore: cast_nullable_to_non_nullable
              as List<HomeTrackListElement>,
    ));
  }
}

/// @nodoc

class _$HomePresentationImpl
    with DiagnosticableTreeMixin
    implements _HomePresentation {
  const _$HomePresentationImpl(
      {required this.advertisement,
      required final List<HomePlaylist> playlists,
      required final List<HomeAlbum> albums,
      required final List<HomeArtist> artists,
      required final List<HomeTrackListElement> trackList})
      : _playlists = playlists,
        _albums = albums,
        _artists = artists,
        _trackList = trackList;

  @override
  final HomeAdvertisement advertisement;
  final List<HomePlaylist> _playlists;
  @override
  List<HomePlaylist> get playlists {
    if (_playlists is EqualUnmodifiableListView) return _playlists;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_playlists);
  }

  final List<HomeAlbum> _albums;
  @override
  List<HomeAlbum> get albums {
    if (_albums is EqualUnmodifiableListView) return _albums;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_albums);
  }

  final List<HomeArtist> _artists;
  @override
  List<HomeArtist> get artists {
    if (_artists is EqualUnmodifiableListView) return _artists;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_artists);
  }

  final List<HomeTrackListElement> _trackList;
  @override
  List<HomeTrackListElement> get trackList {
    if (_trackList is EqualUnmodifiableListView) return _trackList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_trackList);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomePresentation(advertisement: $advertisement, playlists: $playlists, albums: $albums, artists: $artists, trackList: $trackList)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'HomePresentation'))
      ..add(DiagnosticsProperty('advertisement', advertisement))
      ..add(DiagnosticsProperty('playlists', playlists))
      ..add(DiagnosticsProperty('albums', albums))
      ..add(DiagnosticsProperty('artists', artists))
      ..add(DiagnosticsProperty('trackList', trackList));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomePresentationImpl &&
            (identical(other.advertisement, advertisement) ||
                other.advertisement == advertisement) &&
            const DeepCollectionEquality()
                .equals(other._playlists, _playlists) &&
            const DeepCollectionEquality().equals(other._albums, _albums) &&
            const DeepCollectionEquality().equals(other._artists, _artists) &&
            const DeepCollectionEquality()
                .equals(other._trackList, _trackList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      advertisement,
      const DeepCollectionEquality().hash(_playlists),
      const DeepCollectionEquality().hash(_albums),
      const DeepCollectionEquality().hash(_artists),
      const DeepCollectionEquality().hash(_trackList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomePresentationImplCopyWith<_$HomePresentationImpl> get copyWith =>
      __$$HomePresentationImplCopyWithImpl<_$HomePresentationImpl>(
          this, _$identity);
}

abstract class _HomePresentation implements HomePresentation {
  const factory _HomePresentation(
          {required final HomeAdvertisement advertisement,
          required final List<HomePlaylist> playlists,
          required final List<HomeAlbum> albums,
          required final List<HomeArtist> artists,
          required final List<HomeTrackListElement> trackList}) =
      _$HomePresentationImpl;

  @override
  HomeAdvertisement get advertisement;
  @override
  List<HomePlaylist> get playlists;
  @override
  List<HomeAlbum> get albums;
  @override
  List<HomeArtist> get artists;
  @override
  List<HomeTrackListElement> get trackList;
  @override
  @JsonKey(ignore: true)
  _$$HomePresentationImplCopyWith<_$HomePresentationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HomeAdvertisement {
  String get id => throw _privateConstructorUsedError;
  List<int> get image => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeAdvertisementCopyWith<HomeAdvertisement> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeAdvertisementCopyWith<$Res> {
  factory $HomeAdvertisementCopyWith(
          HomeAdvertisement value, $Res Function(HomeAdvertisement) then) =
      _$HomeAdvertisementCopyWithImpl<$Res, HomeAdvertisement>;
  @useResult
  $Res call({String id, List<int> image});
}

/// @nodoc
class _$HomeAdvertisementCopyWithImpl<$Res, $Val extends HomeAdvertisement>
    implements $HomeAdvertisementCopyWith<$Res> {
  _$HomeAdvertisementCopyWithImpl(this._value, this._then);

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
abstract class _$$HomeAdvertisementImplCopyWith<$Res>
    implements $HomeAdvertisementCopyWith<$Res> {
  factory _$$HomeAdvertisementImplCopyWith(_$HomeAdvertisementImpl value,
          $Res Function(_$HomeAdvertisementImpl) then) =
      __$$HomeAdvertisementImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, List<int> image});
}

/// @nodoc
class __$$HomeAdvertisementImplCopyWithImpl<$Res>
    extends _$HomeAdvertisementCopyWithImpl<$Res, _$HomeAdvertisementImpl>
    implements _$$HomeAdvertisementImplCopyWith<$Res> {
  __$$HomeAdvertisementImplCopyWithImpl(_$HomeAdvertisementImpl _value,
      $Res Function(_$HomeAdvertisementImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? image = null,
  }) {
    return _then(_$HomeAdvertisementImpl(
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

class _$HomeAdvertisementImpl
    with DiagnosticableTreeMixin
    implements _HomeAdvertisement {
  const _$HomeAdvertisementImpl(
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
    return 'HomeAdvertisement(id: $id, image: $image)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'HomeAdvertisement'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('image', image));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeAdvertisementImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._image, _image));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, const DeepCollectionEquality().hash(_image));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeAdvertisementImplCopyWith<_$HomeAdvertisementImpl> get copyWith =>
      __$$HomeAdvertisementImplCopyWithImpl<_$HomeAdvertisementImpl>(
          this, _$identity);
}

abstract class _HomeAdvertisement implements HomeAdvertisement {
  const factory _HomeAdvertisement(
      {required final String id,
      required final List<int> image}) = _$HomeAdvertisementImpl;

  @override
  String get id;
  @override
  List<int> get image;
  @override
  @JsonKey(ignore: true)
  _$$HomeAdvertisementImplCopyWith<_$HomeAdvertisementImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HomePlaylist {
  String get id => throw _privateConstructorUsedError;
  List<int> get image => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomePlaylistCopyWith<HomePlaylist> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomePlaylistCopyWith<$Res> {
  factory $HomePlaylistCopyWith(
          HomePlaylist value, $Res Function(HomePlaylist) then) =
      _$HomePlaylistCopyWithImpl<$Res, HomePlaylist>;
  @useResult
  $Res call({String id, List<int> image});
}

/// @nodoc
class _$HomePlaylistCopyWithImpl<$Res, $Val extends HomePlaylist>
    implements $HomePlaylistCopyWith<$Res> {
  _$HomePlaylistCopyWithImpl(this._value, this._then);

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
abstract class _$$HomePlaylistImplCopyWith<$Res>
    implements $HomePlaylistCopyWith<$Res> {
  factory _$$HomePlaylistImplCopyWith(
          _$HomePlaylistImpl value, $Res Function(_$HomePlaylistImpl) then) =
      __$$HomePlaylistImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, List<int> image});
}

/// @nodoc
class __$$HomePlaylistImplCopyWithImpl<$Res>
    extends _$HomePlaylistCopyWithImpl<$Res, _$HomePlaylistImpl>
    implements _$$HomePlaylistImplCopyWith<$Res> {
  __$$HomePlaylistImplCopyWithImpl(
      _$HomePlaylistImpl _value, $Res Function(_$HomePlaylistImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? image = null,
  }) {
    return _then(_$HomePlaylistImpl(
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

class _$HomePlaylistImpl with DiagnosticableTreeMixin implements _HomePlaylist {
  const _$HomePlaylistImpl({required this.id, required final List<int> image})
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
    return 'HomePlaylist(id: $id, image: $image)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'HomePlaylist'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('image', image));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomePlaylistImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._image, _image));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, const DeepCollectionEquality().hash(_image));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomePlaylistImplCopyWith<_$HomePlaylistImpl> get copyWith =>
      __$$HomePlaylistImplCopyWithImpl<_$HomePlaylistImpl>(this, _$identity);
}

abstract class _HomePlaylist implements HomePlaylist {
  const factory _HomePlaylist(
      {required final String id,
      required final List<int> image}) = _$HomePlaylistImpl;

  @override
  String get id;
  @override
  List<int> get image;
  @override
  @JsonKey(ignore: true)
  _$$HomePlaylistImplCopyWith<_$HomePlaylistImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HomeAlbum {
  String get id => throw _privateConstructorUsedError;
  List<int> get image => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeAlbumCopyWith<HomeAlbum> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeAlbumCopyWith<$Res> {
  factory $HomeAlbumCopyWith(HomeAlbum value, $Res Function(HomeAlbum) then) =
      _$HomeAlbumCopyWithImpl<$Res, HomeAlbum>;
  @useResult
  $Res call({String id, List<int> image});
}

/// @nodoc
class _$HomeAlbumCopyWithImpl<$Res, $Val extends HomeAlbum>
    implements $HomeAlbumCopyWith<$Res> {
  _$HomeAlbumCopyWithImpl(this._value, this._then);

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
abstract class _$$HomeAlbumImplCopyWith<$Res>
    implements $HomeAlbumCopyWith<$Res> {
  factory _$$HomeAlbumImplCopyWith(
          _$HomeAlbumImpl value, $Res Function(_$HomeAlbumImpl) then) =
      __$$HomeAlbumImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, List<int> image});
}

/// @nodoc
class __$$HomeAlbumImplCopyWithImpl<$Res>
    extends _$HomeAlbumCopyWithImpl<$Res, _$HomeAlbumImpl>
    implements _$$HomeAlbumImplCopyWith<$Res> {
  __$$HomeAlbumImplCopyWithImpl(
      _$HomeAlbumImpl _value, $Res Function(_$HomeAlbumImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? image = null,
  }) {
    return _then(_$HomeAlbumImpl(
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

class _$HomeAlbumImpl with DiagnosticableTreeMixin implements _HomeAlbum {
  const _$HomeAlbumImpl({required this.id, required final List<int> image})
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
    return 'HomeAlbum(id: $id, image: $image)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'HomeAlbum'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('image', image));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeAlbumImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._image, _image));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, const DeepCollectionEquality().hash(_image));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeAlbumImplCopyWith<_$HomeAlbumImpl> get copyWith =>
      __$$HomeAlbumImplCopyWithImpl<_$HomeAlbumImpl>(this, _$identity);
}

abstract class _HomeAlbum implements HomeAlbum {
  const factory _HomeAlbum(
      {required final String id,
      required final List<int> image}) = _$HomeAlbumImpl;

  @override
  String get id;
  @override
  List<int> get image;
  @override
  @JsonKey(ignore: true)
  _$$HomeAlbumImplCopyWith<_$HomeAlbumImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HomeArtist {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  List<int> get image => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeArtistCopyWith<HomeArtist> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeArtistCopyWith<$Res> {
  factory $HomeArtistCopyWith(
          HomeArtist value, $Res Function(HomeArtist) then) =
      _$HomeArtistCopyWithImpl<$Res, HomeArtist>;
  @useResult
  $Res call({String id, String name, List<int> image});
}

/// @nodoc
class _$HomeArtistCopyWithImpl<$Res, $Val extends HomeArtist>
    implements $HomeArtistCopyWith<$Res> {
  _$HomeArtistCopyWithImpl(this._value, this._then);

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
              as List<int>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HomeArtistImplCopyWith<$Res>
    implements $HomeArtistCopyWith<$Res> {
  factory _$$HomeArtistImplCopyWith(
          _$HomeArtistImpl value, $Res Function(_$HomeArtistImpl) then) =
      __$$HomeArtistImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name, List<int> image});
}

/// @nodoc
class __$$HomeArtistImplCopyWithImpl<$Res>
    extends _$HomeArtistCopyWithImpl<$Res, _$HomeArtistImpl>
    implements _$$HomeArtistImplCopyWith<$Res> {
  __$$HomeArtistImplCopyWithImpl(
      _$HomeArtistImpl _value, $Res Function(_$HomeArtistImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? image = null,
  }) {
    return _then(_$HomeArtistImpl(
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
    ));
  }
}

/// @nodoc

class _$HomeArtistImpl with DiagnosticableTreeMixin implements _HomeArtist {
  const _$HomeArtistImpl(
      {required this.id, required this.name, required final List<int> image})
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
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeArtist(id: $id, name: $name, image: $image)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'HomeArtist'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('image', image));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeArtistImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._image, _image));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, const DeepCollectionEquality().hash(_image));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeArtistImplCopyWith<_$HomeArtistImpl> get copyWith =>
      __$$HomeArtistImplCopyWithImpl<_$HomeArtistImpl>(this, _$identity);
}

abstract class _HomeArtist implements HomeArtist {
  const factory _HomeArtist(
      {required final String id,
      required final String name,
      required final List<int> image}) = _$HomeArtistImpl;

  @override
  String get id;
  @override
  String get name;
  @override
  List<int> get image;
  @override
  @JsonKey(ignore: true)
  _$$HomeArtistImplCopyWith<_$HomeArtistImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HomeTrackListElement {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get composer => throw _privateConstructorUsedError;
  String get duration => throw _privateConstructorUsedError;
  List<int> get image => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeTrackListElementCopyWith<HomeTrackListElement> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeTrackListElementCopyWith<$Res> {
  factory $HomeTrackListElementCopyWith(HomeTrackListElement value,
          $Res Function(HomeTrackListElement) then) =
      _$HomeTrackListElementCopyWithImpl<$Res, HomeTrackListElement>;
  @useResult
  $Res call(
      {String id,
      String name,
      String composer,
      String duration,
      List<int> image});
}

/// @nodoc
class _$HomeTrackListElementCopyWithImpl<$Res,
        $Val extends HomeTrackListElement>
    implements $HomeTrackListElementCopyWith<$Res> {
  _$HomeTrackListElementCopyWithImpl(this._value, this._then);

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
abstract class _$$HomeTrackListElementImplCopyWith<$Res>
    implements $HomeTrackListElementCopyWith<$Res> {
  factory _$$HomeTrackListElementImplCopyWith(_$HomeTrackListElementImpl value,
          $Res Function(_$HomeTrackListElementImpl) then) =
      __$$HomeTrackListElementImplCopyWithImpl<$Res>;
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
class __$$HomeTrackListElementImplCopyWithImpl<$Res>
    extends _$HomeTrackListElementCopyWithImpl<$Res, _$HomeTrackListElementImpl>
    implements _$$HomeTrackListElementImplCopyWith<$Res> {
  __$$HomeTrackListElementImplCopyWithImpl(_$HomeTrackListElementImpl _value,
      $Res Function(_$HomeTrackListElementImpl) _then)
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
    return _then(_$HomeTrackListElementImpl(
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

class _$HomeTrackListElementImpl
    with DiagnosticableTreeMixin
    implements _HomeTrackListElement {
  const _$HomeTrackListElementImpl(
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
    return 'HomeTrackListElement(id: $id, name: $name, composer: $composer, duration: $duration, image: $image)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'HomeTrackListElement'))
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
            other is _$HomeTrackListElementImpl &&
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
  _$$HomeTrackListElementImplCopyWith<_$HomeTrackListElementImpl>
      get copyWith =>
          __$$HomeTrackListElementImplCopyWithImpl<_$HomeTrackListElementImpl>(
              this, _$identity);
}

abstract class _HomeTrackListElement implements HomeTrackListElement {
  const factory _HomeTrackListElement(
      {required final String id,
      required final String name,
      required final String composer,
      required final String duration,
      required final List<int> image}) = _$HomeTrackListElementImpl;

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
  _$$HomeTrackListElementImplCopyWith<_$HomeTrackListElementImpl>
      get copyWith => throw _privateConstructorUsedError;
}
