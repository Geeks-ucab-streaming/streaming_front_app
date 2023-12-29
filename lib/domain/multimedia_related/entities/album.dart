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
  final AlbumArtist? artist;

  String? getId() {
    return id?.value;
  }

  String? getName() {
    return name?.value;
  }

  String? getCompositor() {
    return compositor?.value;
  }

  List<int>? getImage() {
    return image?.value;
  }

  List<Song>? getSongs() {
    return songs;
  }

  String? getArtist() {
    return artist?.value;
  }

  @override
  String toString() {
    return '{id: ${getId()}, name: ${getName()}, image: ${getImage()?.length}}';
  }
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

class AlbumArtist {
  AlbumArtist(this.value);
  final String value;
}
