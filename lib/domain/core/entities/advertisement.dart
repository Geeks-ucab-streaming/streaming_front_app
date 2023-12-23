import 'image.dart';

class Advertisement {
  const Advertisement({
    this.id,
    this.image,
    this.url,
  });

  final String? id;
  final Image? image;
  final String? url;
}
