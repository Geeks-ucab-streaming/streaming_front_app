import 'package:equatable/equatable.dart';
import 'package:streaming_front_app/domain/multimedia_related/Artist.dart';
import 'package:streaming_front_app/domain/multimedia_related/track.dart';

class Album extends Equatable {
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
  final String imageURL;
  final List<Track> tracks;
  final Artist artist;

  @override
  List<Object> get props => [name, compositor];
}
