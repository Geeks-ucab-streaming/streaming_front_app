import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'artist_page_presentation.freezed.dart';

@freezed
class ArtistPagePresentation with _$ArtistPagePresentation {
  const factory ArtistPagePresentation({
    required ArtistPageInfo artist,
    required List<ArtistAlbumPresentation> albums,
    required List<ArtistSongPresentation> songs,
  }) = _ArtistPagePresentation;
}

@freezed
class ArtistPageInfo with _$ArtistPageInfo {
  const factory ArtistPageInfo({
    required String id,
    required String name,
    required String genre,
    required List<int> image,
    required String totalAmountAlbums,
    required String totalSongsAlbums,
  }) = _ArtistPageInfo;
}

@freezed
class ArtistAlbumPresentation with _$ArtistAlbumPresentation {
  const factory ArtistAlbumPresentation({
    required String id,
    required List<int> image,
  }) = _ArtistAlbumPresentation;
}

@freezed
class ArtistSongPresentation with _$ArtistSongPresentation {
  const factory ArtistSongPresentation({
    required String id,
    required String name,
    required String composer,
    required String duration,
    required List<int> image,
  }) = _ArtistSongPresentation;
}
