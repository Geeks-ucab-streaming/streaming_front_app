import '../../multimedia_related/entities/entities.dart';

class Playlist {
  const Playlist({
    this.id,
    this.name,
    this.image,
    this.duration,
    this.plays,
    this.songs,
  });

  final PlaylistID? id;
  final PlaylistName? name;
  final PlaylistImage? image;
  final PlaylistDuration? duration;
  final PlaylistPlays? plays;
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

  int? getDuration() {
    return duration?.value;
  }

  int? getPlays() {
    return plays?.value;
  }

  List<Song>? getSongs() {
    return songs;
  }

  @override
  String toString() {
    return '{id: ${getId()}, name: ${getName()}, image: ${getImage()?.length}, duration: ${getDuration()}}';
  }
}

class PlaylistID {
  PlaylistID(this.value);

  final String value;
}

class PlaylistName {
  PlaylistName(this.value) {
    assert(value.length <= 40);
  }

  final String value;
}

class PlaylistImage {
  PlaylistImage(this.value);

  final List<int> value;
}

class PlaylistDuration {
  PlaylistDuration(this.value) {
    assert(value >= 0);
  }

  final int value;
}

class PlaylistPlays {
  PlaylistPlays(this.value) {
    assert(value >= 0);
  }

  final int value;
}
