class Artist {
  Artist({
    this.id,
    this.name,
    this.image,
    this.artistGenre,
  });

  final ArtistId? id;
  final ArtistName? name;
  final ArtistImageReference? image;
  final ArtistGenre? artistGenre;

  String? getId() {
    return id?.id;
  }

  String? getName() {
    return name?.name;
  }

  List<int>? getImage() {
    return image?.imageURL;
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

class ArtistImageReference {
  ArtistImageReference(this.imageURL);

  final List<int> imageURL;
}

class ArtistGenre {
  ArtistGenre(this.genre);

  final String genre;
}
