import 'entities.dart';

class Album {
  const Album(
    this.id,
    this.name,
    this.compositor,
    this.imageURL,
    this.tracks,
    this.artist,
  );

  final String id;
  final String name;
  final String compositor;
  // THIS NEEDS TO BE CHANGED
  final String imageURL;
  final List<Song> tracks;
  final Artist artist;
}
