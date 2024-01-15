class Advertisement {
  const Advertisement({
    this.id,
    this.image,
    this.url,
  });

  final AdvertisementId? id;
  final AdvertisementImage? image;
  final AdvertisementUrl? url;

  String? getId() {
    return id?.value;
  }

  List<int>? getImage() {
    return image?.value;
  }

  String? getAdvertisement() {
    return url?.value;
  }
}

class AdvertisementId {
  AdvertisementId(this.value);

  final String value;
}

class AdvertisementImage {
  AdvertisementImage(this.value);

  final List<int> value;
}

class AdvertisementUrl {
  AdvertisementUrl(this.value);

  final String value;
}
