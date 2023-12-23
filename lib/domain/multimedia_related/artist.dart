import '../core/image.dart';

class Artist {
  Artist(this.id, this.name, this.image);

  final String id; //cambiar a ArtistId
  final ArtistName name;
  final ArtistImageReference image;

  String getName(){ return name.name; }
  String getImage(){ return image.imageURL; }

}

class ArtistName{
  ArtistName(this.name);

  final String name;
}

class ArtistImageReference{
  ArtistImageReference(this.imageURL);

  final String imageURL;
}