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
    return id?.id;
  }

  String? getName() {
    return name?.name;
  }

  List<int>? getImage() {
    return image?.image;
  }
}

class ArtistId {
  ArtistId(this.id);

  final String id;
}

class ArtistName {
  ArtistName(this.name);

  final String name;
}

class ArtistImage {
  ArtistImage(this.image);

  final List<int> image;
}

class ArtistGenre {
  ArtistGenre(this.genre);

  final String genre;
}
