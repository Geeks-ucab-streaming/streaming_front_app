import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'playlist_page_presentation.freezed.dart';

@freezed
class PlaylistPagePresentation with _$PlaylistPagePresentation {
  const factory PlaylistPagePresentation({
    required PlaylistPageInfo playlist,
    required List<PlaylistSongPresentation> songs,
  }) = _PlaylistPagePresentation;
}

@freezed
class PlaylistPageInfo with _$PlaylistPageInfo {
  const factory PlaylistPageInfo({
    required String id,
    required String name,
    required List<int> image,
    required String duration,
    required String totalPlays
  }) = _PlaylistPageInfo;
}

@freezed 
class PlaylistSongPresentation with _$PlaylistSongPresentation {
  const factory PlaylistSongPresentation({
    required String id,
    required String name,
    required String duration,
  }) = _PlaylistSongPresentation;
}