import 'package:equatable/equatable.dart';
import 'package:streaming_front_app/domain/multimedia_related/track.dart';

class Album extends Equatable {
  const Album(
    this.name,
    this.compositor,
    this.imageURL,
    this.tracks,
  );

  final String name;
  final String compositor;
  final String imageURL;
  final List<Track> tracks;

  @override
  List<Object> get props => [name, compositor];
}
