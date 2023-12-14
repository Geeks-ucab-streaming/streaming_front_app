import '../../../domain/core/entities/entities.dart';
import '../dtos/dtos.dart';

class IdFactoryImpl {
  GenericId reconstituteIdFrom(IdDto idDto) {
    GenericId newId = GenericId(
      idDto.value,
    );
    return newId;
  }
}
