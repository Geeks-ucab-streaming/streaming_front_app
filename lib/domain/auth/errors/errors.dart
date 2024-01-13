abstract class BaseAuthError {
  BaseAuthError({required this.message});
  String message;
}

class PhoneNotRegistered extends BaseAuthError {
  PhoneNotRegistered({required super.message});
}

class ServerError extends BaseAuthError {
  ServerError({required super.message});
}
