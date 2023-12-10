import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

import '../subscription/subscription_dto.dart';

part 'user_dto.freezed.dart';
// Class is serializable
part 'user_dto.g.dart';

@freezed
class UserDto with _$UserDto {
  const factory UserDto({
    required String id,
    required String name,
    required String password,
    // CAN CHANGE
    required String cellphoneNumber,
    // CAN CHANGE
    required String email,
    required SubscriptionDto subscription,
  }) = _UserDto;

  factory UserDto.fromJson(Map<String, Object?> json) =>
      _$UserDtoFromJson(json);
}
