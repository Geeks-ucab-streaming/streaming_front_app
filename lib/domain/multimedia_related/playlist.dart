import '../core/image.dart';
import 'track.dart';

class Playlist {
  const Playlist(
    this.id,
    this.name,
    this.image,
    this.duration,
    this.reproductions,
    this.tracks,
  );

  final String id;
  final String name;
  final Image image;
  final String duration;
  final int reproductions;
  final List<Track> tracks;
}
