import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'jwt_token_dto.freezed.dart';
// Class is serializable
part 'jwt_token_dto.g.dart';

@freezed
class JwtTokenDto with _$JwtTokenDto {
  const factory JwtTokenDto({
    required String token,
  }) = _JwtTokenDto;

  factory JwtTokenDto.fromJson(Map<String, Object?> json) =>
      _$JwtTokenDtoFromJson(json);
}
