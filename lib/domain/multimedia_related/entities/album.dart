import 'entities.dart';

class Album {
  const Album({
    this.id,
    this.name,
    this.compositor,
    this.image,
    this.songs,
    this.artist,
  });

  final AlbumId? id;
  final AlbumName? name;
  final AlbumCompositor? compositor;
  final AlbumImage? image;
  final List<Song>? songs;
  final String? artist;
}

class AlbumId {
  AlbumId(this.value);
  final String value;
}

class AlbumName {
  AlbumName(this.value);
  final String value;
}

class AlbumCompositor {
  AlbumCompositor(this.value);
  final String value;
}

class AlbumImage {
  AlbumImage(this.value);
  final List<int> value;
}
