import 'package:equatable/equatable.dart';

class AdvertisementEntity extends Equatable {
  final String? id;
  final List<int>? image;

  const AdvertisementEntity({this.id, this.image});

  @override
  List<Object?> get props {
    return [
      id,
      image,
    ];
  }
}
