import 'entities.dart';

class SearchResult {

  final List<Song>? songs;
  final List<Artist>? artists;
  final List<Playlist>? playlists;
  final List<Album>? albums;

  const SearchResult({
    this.songs,
    this.artists,
    this.playlists,
    this.albums,
  });

  List<Song>? getSongs() { return songs; }
  List<Artist>? getArtists() { return artists; }
  List<Playlist>? getPlaylists() { return playlists; }
  List<Album>? getAlbums() { return albums; }

}