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
  Song({
    this.id,
    this.name,
    this.image,
    this.date,
    this.previewURL,
    this.genres,
    this.artists,
    this.duration,
  });

  final SongId? id;
  final SongName? name;
  final SongImage? image;
  final SongCreationDate? date;
  final SongPreview? previewURL;
  final List<SongGenre>? genres;
  final List<String>? artists;
  final SongDuration? duration;

  String? getId() {
    return id?.value;
  }

  String? getName() {
    return name?.value;
  }

  List<int>? getImage() {
    return image?.value;
  }

  DateTime? getCreationDate() {
    return date?.value;
  }

  String? getCreationDateAsString() {
    return date?.value.toString();
  }

  String? getPreview() {
    return previewURL?.value;
  }

  List<String> getGenres() {
    List<String> genresList = [];
    for (SongGenre genre in genres!) {
      genresList.add(genre.value);
    }
    return genresList;
  }

  List<String>? getArtist() {
    return artists;
  }

  int? getDuration() {
    return duration?.value;
  }
}

class SongId {
  SongId(this.value);

  final String value;
}

class SongName {
  SongName(this.value);

  final String value;
}

class SongImage {
  SongImage(this.value);

  final List<int> value;
}

class SongCreationDate {
  SongCreationDate(this.value) {
    assert(value.isBefore(DateTime.now()));
  }

  final DateTime value;
}

class SongPreview {
  SongPreview(this.value);

  final String value;
}

class SongGenre {
  SongGenre(this.value);

  final String value;
}

class SongDuration {
  SongDuration(this.value);

  final int value;
}
