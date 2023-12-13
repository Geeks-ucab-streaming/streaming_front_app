import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:streaming_front_app/infrastructure/core/factories/factories.dart';
import 'package:streaming_front_app/presentation/providers/providers.dart';

part 'advertisement_factory_injection.g.dart';

@riverpod
AdvertisementFactoryImpl advertisementFactoryInjection(
    AdvertisementFactoryInjectionRef ref) {
  // get the elements needed for this factory
  final imageFactory = ref.watch(imageFactoryInjectionProvider);
  //
  final AdvertisementFactoryImpl factoryImpl = AdvertisementFactoryImpl(
    imageFactory,
  );

  return factoryImpl;
}
