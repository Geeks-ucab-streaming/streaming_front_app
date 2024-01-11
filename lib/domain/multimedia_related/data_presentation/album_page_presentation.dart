import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'album_page_presentation.freezed.dart';

@freezed
class AlbumPagePresentation with _$AlbumPagePresentation {
  const factory AlbumPagePresentation({
    required AlbumPageInfo album,
    required List<AlbumSongPresentation> songs,
  }) = _AlbumPagePresentation;
}

@freezed
class AlbumPageInfo with _$AlbumPageInfo {
  const factory AlbumPageInfo({
    required String id,
    required String name,
    required List<int> image,
    required String duration,
    required String totalSongs,
  }) = _AlbumPageInfo;
}

@freezed 
class AlbumSongPresentation with _$AlbumSongPresentation {
  const factory AlbumSongPresentation({
    required String id,
    required String name,
  }) = _AlbumSongPresentation;
}