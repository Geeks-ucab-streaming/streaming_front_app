import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'update_user_info.freezed.dart';
// Class is serializable
part 'update_user_info.g.dart';

@freezed
class UpdateUserInfoDto with _$UpdateUserInfoDto {
  const factory UpdateUserInfoDto({
    String? name,
    String? email,
    String? birth_date,
    String? gender,
  }) = _UpdateUserInfoDto;

  factory UpdateUserInfoDto.fromJson(Map<String, Object?> json) =>
      _$UpdateUserInfoDtoFromJson(json);
}
