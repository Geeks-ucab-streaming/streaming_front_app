// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserDtoImpl _$$UserDtoImplFromJson(Map<String, dynamic> json) =>
    _$UserDtoImpl(
      id: json['id'] as String,
      phone: json['phone'] as String,
      name: json['name'] as String? ?? "",
      email: json['email'] as String? ?? "",
      birthdate: json['birthdate'] as String? ?? "",
      genre: json['genre'] as String? ?? "",
    );

Map<String, dynamic> _$$UserDtoImplToJson(_$UserDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'phone': instance.phone,
      'name': instance.name,
      'email': instance.email,
      'birthdate': instance.birthdate,
      'genre': instance.genre,
    };
