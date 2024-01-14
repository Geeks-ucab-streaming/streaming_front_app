// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_presentation.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SearchPresentation {
  List<SearchArtist> get artists => throw _privateConstructorUsedError;
  List<SearchTrackListElement> get trackList =>
      throw _privateConstructorUsedError;
  List<SearchPlaylist> get playlists => throw _privateConstructorUsedError;
  List<SearchAlbum> get albums => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchPresentationCopyWith<SearchPresentation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchPresentationCopyWith<$Res> {
  factory $SearchPresentationCopyWith(
          SearchPresentation value, $Res Function(SearchPresentation) then) =
      _$SearchPresentationCopyWithImpl<$Res, SearchPresentation>;
  @useResult
  $Res call(
      {List<SearchArtist> artists,
      List<SearchTrackListElement> trackList,
      List<SearchPlaylist> playlists,
      List<SearchAlbum> albums});
}

/// @nodoc
class _$SearchPresentationCopyWithImpl<$Res, $Val extends SearchPresentation>
    implements $SearchPresentationCopyWith<$Res> {
  _$SearchPresentationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? artists = null,
    Object? trackList = null,
    Object? playlists = null,
    Object? albums = null,
  }) {
    return _then(_value.copyWith(
      artists: null == artists
          ? _value.artists
          : artists // ignore: cast_nullable_to_non_nullable
              as List<SearchArtist>,
      trackList: null == trackList
          ? _value.trackList
          : trackList // ignore: cast_nullable_to_non_nullable
              as List<SearchTrackListElement>,
      playlists: null == playlists
          ? _value.playlists
          : playlists // ignore: cast_nullable_to_non_nullable
              as List<SearchPlaylist>,
      albums: null == albums
          ? _value.albums
          : albums // ignore: cast_nullable_to_non_nullable
              as List<SearchAlbum>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SearchPresentationImplCopyWith<$Res>
    implements $SearchPresentationCopyWith<$Res> {
  factory _$$SearchPresentationImplCopyWith(_$SearchPresentationImpl value,
          $Res Function(_$SearchPresentationImpl) then) =
      __$$SearchPresentationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<SearchArtist> artists,
      List<SearchTrackListElement> trackList,
      List<SearchPlaylist> playlists,
      List<SearchAlbum> albums});
}

/// @nodoc
class __$$SearchPresentationImplCopyWithImpl<$Res>
    extends _$SearchPresentationCopyWithImpl<$Res, _$SearchPresentationImpl>
    implements _$$SearchPresentationImplCopyWith<$Res> {
  __$$SearchPresentationImplCopyWithImpl(_$SearchPresentationImpl _value,
      $Res Function(_$SearchPresentationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? artists = null,
    Object? trackList = null,
    Object? playlists = null,
    Object? albums = null,
  }) {
    return _then(_$SearchPresentationImpl(
      artists: null == artists
          ? _value._artists
          : artists // ignore: cast_nullable_to_non_nullable
              as List<SearchArtist>,
      trackList: null == trackList
          ? _value._trackList
          : trackList // ignore: cast_nullable_to_non_nullable
              as List<SearchTrackListElement>,
      playlists: null == playlists
          ? _value._playlists
          : playlists // ignore: cast_nullable_to_non_nullable
              as List<SearchPlaylist>,
      albums: null == albums
          ? _value._albums
          : albums // ignore: cast_nullable_to_non_nullable
              as List<SearchAlbum>,
    ));
  }
}

/// @nodoc

class _$SearchPresentationImpl
    with DiagnosticableTreeMixin
    implements _SearchPresentation {
  const _$SearchPresentationImpl(
      {required final List<SearchArtist> artists,
      required final List<SearchTrackListElement> trackList,
      required final List<SearchPlaylist> playlists,
      required final List<SearchAlbum> albums})
      : _artists = artists,
        _trackList = trackList,
        _playlists = playlists,
        _albums = albums;

  final List<SearchArtist> _artists;
  @override
  List<SearchArtist> get artists {
    if (_artists is EqualUnmodifiableListView) return _artists;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_artists);
  }

  final List<SearchTrackListElement> _trackList;
  @override
  List<SearchTrackListElement> get trackList {
    if (_trackList is EqualUnmodifiableListView) return _trackList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_trackList);
  }

  final List<SearchPlaylist> _playlists;
  @override
  List<SearchPlaylist> get playlists {
    if (_playlists is EqualUnmodifiableListView) return _playlists;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_playlists);
  }

  final List<SearchAlbum> _albums;
  @override
  List<SearchAlbum> get albums {
    if (_albums is EqualUnmodifiableListView) return _albums;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_albums);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SearchPresentation(artists: $artists, trackList: $trackList, playlists: $playlists, albums: $albums)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SearchPresentation'))
      ..add(DiagnosticsProperty('artists', artists))
      ..add(DiagnosticsProperty('trackList', trackList))
      ..add(DiagnosticsProperty('playlists', playlists))
      ..add(DiagnosticsProperty('albums', albums));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchPresentationImpl &&
            const DeepCollectionEquality().equals(other._artists, _artists) &&
            const DeepCollectionEquality()
                .equals(other._trackList, _trackList) &&
            const DeepCollectionEquality()
                .equals(other._playlists, _playlists) &&
            const DeepCollectionEquality().equals(other._albums, _albums));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_artists),
      const DeepCollectionEquality().hash(_trackList),
      const DeepCollectionEquality().hash(_playlists),
      const DeepCollectionEquality().hash(_albums));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchPresentationImplCopyWith<_$SearchPresentationImpl> get copyWith =>
      __$$SearchPresentationImplCopyWithImpl<_$SearchPresentationImpl>(
          this, _$identity);
}

abstract class _SearchPresentation implements SearchPresentation {
  const factory _SearchPresentation(
      {required final List<SearchArtist> artists,
      required final List<SearchTrackListElement> trackList,
      required final List<SearchPlaylist> playlists,
      required final List<SearchAlbum> albums}) = _$SearchPresentationImpl;

  @override
  List<SearchArtist> get artists;
  @override
  List<SearchTrackListElement> get trackList;
  @override
  List<SearchPlaylist> get playlists;
  @override
  List<SearchAlbum> get albums;
  @override
  @JsonKey(ignore: true)
  _$$SearchPresentationImplCopyWith<_$SearchPresentationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SearchArtist {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  List<int> get image => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchArtistCopyWith<SearchArtist> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchArtistCopyWith<$Res> {
  factory $SearchArtistCopyWith(
          SearchArtist value, $Res Function(SearchArtist) then) =
      _$SearchArtistCopyWithImpl<$Res, SearchArtist>;
  @useResult
  $Res call({String id, String name, List<int> image});
}

/// @nodoc
class _$SearchArtistCopyWithImpl<$Res, $Val extends SearchArtist>
    implements $SearchArtistCopyWith<$Res> {
  _$SearchArtistCopyWithImpl(this._value, this._then);

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
abstract class _$$SearchArtistImplCopyWith<$Res>
    implements $SearchArtistCopyWith<$Res> {
  factory _$$SearchArtistImplCopyWith(
          _$SearchArtistImpl value, $Res Function(_$SearchArtistImpl) then) =
      __$$SearchArtistImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name, List<int> image});
}

/// @nodoc
class __$$SearchArtistImplCopyWithImpl<$Res>
    extends _$SearchArtistCopyWithImpl<$Res, _$SearchArtistImpl>
    implements _$$SearchArtistImplCopyWith<$Res> {
  __$$SearchArtistImplCopyWithImpl(
      _$SearchArtistImpl _value, $Res Function(_$SearchArtistImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? image = null,
  }) {
    return _then(_$SearchArtistImpl(
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

class _$SearchArtistImpl with DiagnosticableTreeMixin implements _SearchArtist {
  const _$SearchArtistImpl(
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
    return 'SearchArtist(id: $id, name: $name, image: $image)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SearchArtist'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('image', image));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchArtistImpl &&
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
  _$$SearchArtistImplCopyWith<_$SearchArtistImpl> get copyWith =>
      __$$SearchArtistImplCopyWithImpl<_$SearchArtistImpl>(this, _$identity);
}

abstract class _SearchArtist implements SearchArtist {
  const factory _SearchArtist(
      {required final String id,
      required final String name,
      required final List<int> image}) = _$SearchArtistImpl;

  @override
  String get id;
  @override
  String get name;
  @override
  List<int> get image;
  @override
  @JsonKey(ignore: true)
  _$$SearchArtistImplCopyWith<_$SearchArtistImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SearchTrackListElement {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get composer => throw _privateConstructorUsedError;
  String get duration => throw _privateConstructorUsedError;
  List<int> get image => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchTrackListElementCopyWith<SearchTrackListElement> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchTrackListElementCopyWith<$Res> {
  factory $SearchTrackListElementCopyWith(SearchTrackListElement value,
          $Res Function(SearchTrackListElement) then) =
      _$SearchTrackListElementCopyWithImpl<$Res, SearchTrackListElement>;
  @useResult
  $Res call(
      {String id,
      String name,
      String composer,
      String duration,
      List<int> image});
}

/// @nodoc
class _$SearchTrackListElementCopyWithImpl<$Res,
        $Val extends SearchTrackListElement>
    implements $SearchTrackListElementCopyWith<$Res> {
  _$SearchTrackListElementCopyWithImpl(this._value, this._then);

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
abstract class _$$SearchTrackListElementImplCopyWith<$Res>
    implements $SearchTrackListElementCopyWith<$Res> {
  factory _$$SearchTrackListElementImplCopyWith(
          _$SearchTrackListElementImpl value,
          $Res Function(_$SearchTrackListElementImpl) then) =
      __$$SearchTrackListElementImplCopyWithImpl<$Res>;
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
class __$$SearchTrackListElementImplCopyWithImpl<$Res>
    extends _$SearchTrackListElementCopyWithImpl<$Res,
        _$SearchTrackListElementImpl>
    implements _$$SearchTrackListElementImplCopyWith<$Res> {
  __$$SearchTrackListElementImplCopyWithImpl(
      _$SearchTrackListElementImpl _value,
      $Res Function(_$SearchTrackListElementImpl) _then)
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
    return _then(_$SearchTrackListElementImpl(
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

class _$SearchTrackListElementImpl
    with DiagnosticableTreeMixin
    implements _SearchTrackListElement {
  const _$SearchTrackListElementImpl(
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
    return 'SearchTrackListElement(id: $id, name: $name, composer: $composer, duration: $duration, image: $image)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SearchTrackListElement'))
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
            other is _$SearchTrackListElementImpl &&
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
  _$$SearchTrackListElementImplCopyWith<_$SearchTrackListElementImpl>
      get copyWith => __$$SearchTrackListElementImplCopyWithImpl<
          _$SearchTrackListElementImpl>(this, _$identity);
}

abstract class _SearchTrackListElement implements SearchTrackListElement {
  const factory _SearchTrackListElement(
      {required final String id,
      required final String name,
      required final String composer,
      required final String duration,
      required final List<int> image}) = _$SearchTrackListElementImpl;

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
  _$$SearchTrackListElementImplCopyWith<_$SearchTrackListElementImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SearchPlaylist {
  String get id => throw _privateConstructorUsedError;
  List<int> get image => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchPlaylistCopyWith<SearchPlaylist> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchPlaylistCopyWith<$Res> {
  factory $SearchPlaylistCopyWith(
          SearchPlaylist value, $Res Function(SearchPlaylist) then) =
      _$SearchPlaylistCopyWithImpl<$Res, SearchPlaylist>;
  @useResult
  $Res call({String id, List<int> image});
}

/// @nodoc
class _$SearchPlaylistCopyWithImpl<$Res, $Val extends SearchPlaylist>
    implements $SearchPlaylistCopyWith<$Res> {
  _$SearchPlaylistCopyWithImpl(this._value, this._then);

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
abstract class _$$SearchPlaylistImplCopyWith<$Res>
    implements $SearchPlaylistCopyWith<$Res> {
  factory _$$SearchPlaylistImplCopyWith(_$SearchPlaylistImpl value,
          $Res Function(_$SearchPlaylistImpl) then) =
      __$$SearchPlaylistImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, List<int> image});
}

/// @nodoc
class __$$SearchPlaylistImplCopyWithImpl<$Res>
    extends _$SearchPlaylistCopyWithImpl<$Res, _$SearchPlaylistImpl>
    implements _$$SearchPlaylistImplCopyWith<$Res> {
  __$$SearchPlaylistImplCopyWithImpl(
      _$SearchPlaylistImpl _value, $Res Function(_$SearchPlaylistImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? image = null,
  }) {
    return _then(_$SearchPlaylistImpl(
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

class _$SearchPlaylistImpl
    with DiagnosticableTreeMixin
    implements _SearchPlaylist {
  const _$SearchPlaylistImpl({required this.id, required final List<int> image})
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
    return 'SearchPlaylist(id: $id, image: $image)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SearchPlaylist'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('image', image));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchPlaylistImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._image, _image));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, const DeepCollectionEquality().hash(_image));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchPlaylistImplCopyWith<_$SearchPlaylistImpl> get copyWith =>
      __$$SearchPlaylistImplCopyWithImpl<_$SearchPlaylistImpl>(
          this, _$identity);
}

abstract class _SearchPlaylist implements SearchPlaylist {
  const factory _SearchPlaylist(
      {required final String id,
      required final List<int> image}) = _$SearchPlaylistImpl;

  @override
  String get id;
  @override
  List<int> get image;
  @override
  @JsonKey(ignore: true)
  _$$SearchPlaylistImplCopyWith<_$SearchPlaylistImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SearchAlbum {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  List<int> get image => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchAlbumCopyWith<SearchAlbum> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchAlbumCopyWith<$Res> {
  factory $SearchAlbumCopyWith(
          SearchAlbum value, $Res Function(SearchAlbum) then) =
      _$SearchAlbumCopyWithImpl<$Res, SearchAlbum>;
  @useResult
  $Res call({String id, String name, List<int> image});
}

/// @nodoc
class _$SearchAlbumCopyWithImpl<$Res, $Val extends SearchAlbum>
    implements $SearchAlbumCopyWith<$Res> {
  _$SearchAlbumCopyWithImpl(this._value, this._then);

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
abstract class _$$SearchAlbumImplCopyWith<$Res>
    implements $SearchAlbumCopyWith<$Res> {
  factory _$$SearchAlbumImplCopyWith(
          _$SearchAlbumImpl value, $Res Function(_$SearchAlbumImpl) then) =
      __$$SearchAlbumImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name, List<int> image});
}

/// @nodoc
class __$$SearchAlbumImplCopyWithImpl<$Res>
    extends _$SearchAlbumCopyWithImpl<$Res, _$SearchAlbumImpl>
    implements _$$SearchAlbumImplCopyWith<$Res> {
  __$$SearchAlbumImplCopyWithImpl(
      _$SearchAlbumImpl _value, $Res Function(_$SearchAlbumImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? image = null,
  }) {
    return _then(_$SearchAlbumImpl(
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

class _$SearchAlbumImpl with DiagnosticableTreeMixin implements _SearchAlbum {
  const _$SearchAlbumImpl(
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
    return 'SearchAlbum(id: $id, name: $name, image: $image)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SearchAlbum'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('image', image));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchAlbumImpl &&
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
  _$$SearchAlbumImplCopyWith<_$SearchAlbumImpl> get copyWith =>
      __$$SearchAlbumImplCopyWithImpl<_$SearchAlbumImpl>(this, _$identity);
}

abstract class _SearchAlbum implements SearchAlbum {
  const factory _SearchAlbum(
      {required final String id,
      required final String name,
      required final List<int> image}) = _$SearchAlbumImpl;

  @override
  String get id;
  @override
  String get name;
  @override
  List<int> get image;
  @override
  @JsonKey(ignore: true)
  _$$SearchAlbumImplCopyWith<_$SearchAlbumImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
