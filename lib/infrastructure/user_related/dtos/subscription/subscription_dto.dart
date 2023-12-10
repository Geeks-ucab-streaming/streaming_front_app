import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'subscription_dto.freezed.dart';
// Class is serializable
part 'subscription_dto.g.dart';

@freezed
class SubscriptionDto with _$SubscriptionDto {
  const factory SubscriptionDto({
    required String id,
    required String state,
  }) = _SubscriptionDto;

  factory SubscriptionDto.fromJson(Map<String, Object?> json) =>
      _$SubscriptionDtoFromJson(json);
}
