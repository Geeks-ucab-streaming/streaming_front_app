import 'package:streaming_front_app/features/user_related/domain/entities/advertisement_entity.dart';

class AdvertisementModel extends AdvertisementEntity {
  const AdvertisementModel({
    String? id,
    List<int>? image,
  });

  factory AdvertisementModel.fromJson(Map<String, dynamic> json) {
    // elements needed to get an image as buffer
    List<dynamic> bufferDynamic = json["image"]["data"];
    List<int> bufferInt = bufferDynamic.map((e) => e as int).toList();

    return AdvertisementModel(
      id: json['id'] as String ?? "",
      image: bufferInt,
    );
  }
}
