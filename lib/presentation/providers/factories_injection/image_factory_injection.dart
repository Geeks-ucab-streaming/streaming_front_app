import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:streaming_front_app/infrastructure/core/factories/factories.dart';

part 'image_factory_injection.g.dart';

@riverpod
ImageFactoryImpl imageFactoryInjection(ImageFactoryInjectionRef ref) {
  final ImageFactoryImpl factoryImpl = ImageFactoryImpl();

  return factoryImpl;
}
