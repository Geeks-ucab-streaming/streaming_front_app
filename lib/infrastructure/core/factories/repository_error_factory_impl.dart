import '../../../domain/core/entities/entities.dart';

class RepositoryErrorFactoryImpl {
  RepositoryError createRepositoryError(String errorMessage) {
    return RepositoryError(errorMessage);
  }
}
