// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'advertisement_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AdvertisementDtoImpl _$$AdvertisementDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$AdvertisementDtoImpl(
      id: json['id'] as String,
      image: ImageDto.fromJson(json['image'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AdvertisementDtoImplToJson(
        _$AdvertisementDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'image': instance.image,
    };
