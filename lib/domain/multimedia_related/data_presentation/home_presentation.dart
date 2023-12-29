import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'home_presentation.freezed.dart';

@freezed
class HomePresentation with _$HomePresentation {
  const factory HomePresentation({
    required HomeAdvertisement advertisement,
    required List<HomePlaylist> playlists,
    required List<HomeAlbum> albums,
    required List<HomeArtist> artists,
    required List<HomeTrackListElement> trackList,
  }) = _HomePresentation;
}

@freezed
class HomeAdvertisement with _$HomeAdvertisement {
  const factory HomeAdvertisement({
    required String id,
    required List<int> image,
  }) = _HomeAdvertisement;
}

@freezed
class HomePlaylist with _$HomePlaylist {
  const factory HomePlaylist({
    required String id,
    required List<int> image,
  }) = _HomePlaylist;
}

@freezed
class HomeAlbum with _$HomeAlbum {
  const factory HomeAlbum({
    required String id,
    required List<int> image,
  }) = _HomeAlbum;
}

@freezed
class HomeArtist with _$HomeArtist {
  const factory HomeArtist({
    required String id,
    required String name,
    required List<int> image,
  }) = _HomeArtist;
}

@freezed
class HomeTrackListElement with _$HomeTrackListElement {
  const factory HomeTrackListElement({
    required String id,
    required String name,
    required String composer,
    required String duration,
    required List<int> image,
  }) = _HomeTrackListElement;
}
