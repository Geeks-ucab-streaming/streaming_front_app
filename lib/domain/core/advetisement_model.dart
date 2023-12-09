class Advertisement {
  const Advertisement(
    this.id,
    this.image,
  );

  final String? id;
  final List<int>? image;

  // This cannot go here, because it contaminants the domain
  /*
  // constructor that serves
  const Advertisement({
    String? id,
    List<int>? image,
  });

  factory AdvertisementEntity.fromJson(Map<String, dynamic> json) {
    // elements needed to get an image as buffer
    List<dynamic> bufferDynamic = json["image"]["data"];
    List<int> bufferInt = bufferDynamic.map((e) => e as int).toList();

    return AdvertisementEntity(
      id: json['id'] as String, //?? "",
      image: bufferInt,
    );
  }*/
}
