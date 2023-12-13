import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:streaming_front_app/infrastructure/core/factories/factories.dart';

part 'repository_error_factory_injection.g.dart';

@riverpod
RepositoryErrorFactoryImpl repositoryErrorFactoryInjection(
    RepositoryErrorFactoryInjectionRef ref) {
  final RepositoryErrorFactoryImpl factoryImpl = RepositoryErrorFactoryImpl();

  return factoryImpl;
}
