import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'search_presentation.freezed.dart';

@freezed
class SearchPresentation with _$SearchPresentation {
  const factory SearchPresentation({
    required List<SearchArtist> artists,
    required List<SearchTrackListElement> trackList,
    required List<SearchPlaylist> playlists,
    required List<SearchAlbum> albums,
  }) = _SearchPresentation;
}

@freezed
class SearchArtist with _$SearchArtist {
  const factory SearchArtist({
    required String id,
    required String name,
    required List<int> image,
  }) = _SearchArtist;
}

@freezed
class SearchTrackListElement with _$SearchTrackListElement {
  const factory SearchTrackListElement({
    required String id,
    required String name,
    required String composer,
    required String duration,
    required List<int> image,
  }) = _SearchTrackListElement;
}

@freezed
class SearchPlaylist with _$SearchPlaylist {
  const factory SearchPlaylist({
    required String id,
    required List<int> image,
    required String name,
  }) = _SearchPlaylist;
}

@freezed
class SearchAlbum with _$SearchAlbum {
  const factory SearchAlbum({
    required String id,
    required List<int> image,
    required String name,
  }) = _SearchAlbum;
}