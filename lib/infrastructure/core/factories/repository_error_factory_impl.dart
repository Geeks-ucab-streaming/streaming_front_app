import '../../../domain/core/repository_error.dart';

class RepositoryErrorFactoryImpl {
  RepositoryError createRepositoryError(String errorMessage) {
    return RepositoryError(errorMessage);
  }
}
