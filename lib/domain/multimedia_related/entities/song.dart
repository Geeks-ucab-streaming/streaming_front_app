// class Song {
//   Song(
//     this.id,
//     this.name,
//     this.compositor,
//     this.imageURL,
//     this.duration, {
//     this.artist,
//   });
//
//   final String id;
//   final String name;
//   final String compositor;
//   final String imageURL;
//   final double duration;
//   Artist? artist;
// }

class Song {
  Song(
    this.id,
    this.name,
    this.url,
    this.image,
    this.date,
    this.previewURL,
    this.genres,
    this.duration, {
    this.artist,
  });

  final String id; //cambiar a SongID
  final SongName name;
  final SongReference url;
  final SongImage image;
  final SongCreationDate date;
  final SongPreview previewURL;
  final List<SongGenre> genres;
  String? artist;
  final SongDuration duration;

  String getName() {
    return name.name;
  }

  String getReference() {
    return url.url;
  }

  List<int> getImage() {
    return image.image;
  }

  DateTime getCreationDate() {
    return date.date;
  }

  String getCreationDateAsString() {
    return date.date.toString();
  }

  String getPreview() {
    return previewURL.previewURL;
  }

  List<String> getGenres() {
    List<String> genresList = [];
    for (SongGenre genre in genres) {
      genresList.add(genre.genre);
    }
    return genresList;
  }

  String getArtist() {
    return artist!;
  }

  int getDuration() {
    return duration.duration;
  }
}

class SongName {
  SongName(this.name);

  final String name;
}

class SongImage {
  SongImage(this.image);

  final List<int> image;
}

class SongReference {
  SongReference(this.url);

  final String url;
}

class SongCreationDate {
  SongCreationDate(this.date) {
    assert(date.isBefore(DateTime.now()));
  }

  final DateTime date;
}

class SongPreview {
  SongPreview(this.previewURL);

  final String previewURL;
}

class SongGenre {
  SongGenre(this.genre);

  final String genre;
}

class SongDuration {
  SongDuration(this.duration);

  final int duration;
}
