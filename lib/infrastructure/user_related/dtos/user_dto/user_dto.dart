import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'user_dto.freezed.dart';
// Class is serializable
part 'user_dto.g.dart';

@freezed
class UserDto with _$UserDto {
  const factory UserDto({
    required String id,
    @Default("") String phone,
    @Default("") String name,
    @Default("") String email,
    @Default("") String birthdate,
    @Default("") String genre,
  }) = _UserDto;

  factory UserDto.fromJson(Map<String, Object?> json) =>
      _$UserDtoFromJson(json);
}
