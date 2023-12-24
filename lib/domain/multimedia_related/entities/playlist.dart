import '../../core/entities/entities.dart';
import '../../multimedia_related/entities/entities.dart';

class Playlist {
  const Playlist(
    this.id,
    this.name,
    this.image,
    this.duration,
    this.plays,
    this.tracks,
  );

  final PlaylistID id;
  final PlaylistName name;
  final PlaylistImage image;
  final PlaylistDuration duration;
  final PlaylistPlays plays;
  final List<Song> tracks;

  String getID() {
    return id.id;
  }

  String getName() {
    return name.name;
  }

  Image getImage() {
    return image.image;
  }

  int getDuration() {
    return duration.duration;
  }

  int getPlays() {
    return plays.plays;
  }

  List<Song> getTracks() {
    return tracks;
  }
}

class PlaylistID {
  PlaylistID(this.id);

  final String id;
}

class PlaylistName {
  PlaylistName(this.name) {
    assert(name.length <= 40);
  }

  final String name;
}

class PlaylistImage {
  PlaylistImage(this.image);

  final Image image;
}

class PlaylistDuration {
  PlaylistDuration(this.duration) {
    assert(duration >= 0);
  }

  final int duration;
}

class PlaylistPlays {
  PlaylistPlays(this.plays) {
    assert(plays >= 0);
  }

  final int plays;
}
