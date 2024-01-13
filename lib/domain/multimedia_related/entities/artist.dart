import 'entities.dart';

class Artist {
  Artist({
    this.id,
    this.name,
    this.image,
    this.artistGenre,
    this.albums,
    this.songs,
  });

  final ArtistId? id;
  final ArtistName? name;
  final ArtistImage? image;
  final ArtistGenre? artistGenre;
  final List<Album>? albums;
  final List<Song>? songs;

  String? getId() {
    return id?.value;
  }

  String? getName() {
    return name?.value;
  }

  List<int>? getImage() {
    return image?.value;
  }

  String? getGenre() {
    return artistGenre?.value;
  }

  List<Album>? getAlbums() {
    return albums;
  }

  List<Song>? getSongs() {
    return songs;
  }
}

class ArtistId {
  ArtistId(this.value);

  final String value;
}

class ArtistName {
  ArtistName(this.value);

  final String value;
}

class ArtistImage {
  ArtistImage(this.value);

  final List<int> value;
}

class ArtistGenre {
  ArtistGenre(this.value);

  final String value;
}
