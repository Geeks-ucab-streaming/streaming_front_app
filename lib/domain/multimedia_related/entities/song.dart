import 'entities.dart';

class Song {
  const Song(
    this.songId,
    this.name,
    this.duration,
    this.artists,
  );

  final String songId;
  final String name;
  final String duration;
  final Artist artists;
}
