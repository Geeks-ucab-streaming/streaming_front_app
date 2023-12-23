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
      this.duration, {
        this.artist,
      }
      );

  final String id; //cambiar a TrackID
  final TrackName name;
  final TrackReference url;
  final TrackImage imageURL;
  final TrackCreationDate date;
  final TrackPreview previewURL;
  final List<TrackGenre> genres;
  String? artist;
  final TrackDuration duration;

  String getName(){ return name.name; }
  String getReference(){ return url.url; }
  String getImage(){ return imageURL.imageURL; }
  DateTime getCreationDate(){ return date.date; }
    String getCreationDateAsString(){ return date.date.toString(); }
  String getPreview(){ return previewURL.previewURL; }
  List<String> getGenres(){
    List<String> genresList = [];
    for (TrackGenre genre in genres){
      genresList.add(genre.genre);
    }
    return genresList;
  }
  String getArtist(){ return artist!; }
  int getDuration(){ return duration.duration; }
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

class TrackDuration {
  TrackDuration(this.duration);

  final int duration;
}