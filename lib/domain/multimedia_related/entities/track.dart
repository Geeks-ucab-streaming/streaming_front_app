import 'entities.dart';

class Track {
  Track(
    this.id,
    this.name,
    this.compositor,
    this.imageURL,
    this.duration, {
    this.artist,
  });

  final String id;
  final String name;
  final String compositor;
  final String imageURL;
  final double duration;
  Artist? artist;
}
