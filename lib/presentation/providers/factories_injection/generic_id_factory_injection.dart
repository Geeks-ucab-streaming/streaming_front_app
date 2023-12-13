import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:streaming_front_app/infrastructure/core/factories/factories.dart';

part 'generic_id_factory_injection.g.dart';

@riverpod
IdFactoryImpl genericIdFactoryInjection(GenericIdFactoryInjectionRef ref) {
  final IdFactoryImpl factoryImpl = IdFactoryImpl();

  return factoryImpl;
}
