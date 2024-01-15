// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_user_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UpdateUserInfoDtoImpl _$$UpdateUserInfoDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$UpdateUserInfoDtoImpl(
      name: json['name'] as String?,
      email: json['email'] as String?,
      birth_date: json['birth_date'] as String?,
      gender: json['gender'] as String?,
    );

Map<String, dynamic> _$$UpdateUserInfoDtoImplToJson(
        _$UpdateUserInfoDtoImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'email': instance.email,
      'birth_date': instance.birth_date,
      'gender': instance.gender,
    };
