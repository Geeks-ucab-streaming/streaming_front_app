import '../dtos/dtos.dart';

import '../../../domain/core/generic_id.dart';

class IdFactoryImpl {
  GenericId reconstituteIdFrom(IdDto idDto) {
    GenericId newId = GenericId(
      idDto.value,
    );
    return newId;
  }
}
