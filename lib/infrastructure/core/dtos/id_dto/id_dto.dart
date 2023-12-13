import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'id_dto.freezed.dart';
part 'id_dto.g.dart';

@freezed
class IdDto with _$IdDto {
  const factory IdDto({
    required String value,
  }) = _IdDto;

  factory IdDto.fromJson(Map<String, Object?> json) => _$IdDtoFromJson(json);
}
