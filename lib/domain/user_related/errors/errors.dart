abstract class BaseUserError {
  BaseUserError({required this.message});
  String message;
}

class CancelSubscriptionError extends BaseUserError {
  CancelSubscriptionError({required super.message});
}

class ServerError extends BaseUserError {
  ServerError({required super.message});
}

class Unauthorized extends BaseUserError {
  Unauthorized({required super.message});
}

class CouldNotFind extends BaseUserError {
  CouldNotFind({required super.message});
}
