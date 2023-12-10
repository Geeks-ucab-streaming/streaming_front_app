// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserDtoImpl _$$UserDtoImplFromJson(Map<String, dynamic> json) =>
    _$UserDtoImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      password: json['password'] as String,
      cellphoneNumber: json['cellphoneNumber'] as String,
      email: json['email'] as String,
      subscription: SubscriptionDto.fromJson(
          json['subscription'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$UserDtoImplToJson(_$UserDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'password': instance.password,
      'cellphoneNumber': instance.cellphoneNumber,
      'email': instance.email,
      'subscription': instance.subscription,
    };
