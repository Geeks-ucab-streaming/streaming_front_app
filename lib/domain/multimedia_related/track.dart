
// class Track {
//   Track(
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

class Track {
  Track(
      this.id,
      this.name,
      this.url,
      this.imageURL,
      this.date,
      this.previewURL,
      this.genres,
      );

  final String id; //cambiar a Idsong
  final TrackName name;
  final TrackReference url;
  final TrackImage imageURL;
  final TrackCreationDate date;
  final TrackPreview previewURL;
  final List<TrackGenre> genres;
}

class TrackName {
  TrackName(this.name);

  final String name;
}

class TrackImage {
  TrackImage(this.imageURL);

  final String imageURL;
}

class TrackReference {
  TrackReference(this.url);

  final String url;
}

class TrackCreationDate {
  TrackCreationDate(this.date){
    assert(date.isBefore(DateTime.now()));
  }

  final DateTime date;
}

class TrackPreview {
  TrackPreview(this.previewURL);

  final String previewURL;
}

class TrackGenre {
  TrackGenre(this.genre);

  final String genre;
}