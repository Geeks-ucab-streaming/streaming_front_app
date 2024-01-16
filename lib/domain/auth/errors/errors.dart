abstract class BaseAuthError {
  BaseAuthError({required this.message});
  String message;
}

class Unauthorized extends BaseAuthError {
  Unauthorized({required super.message});
}

class PhoneNotValidForSignIn extends BaseAuthError {
  PhoneNotValidForSignIn({required super.message});
}

class PhoneAlreadyExist extends BaseAuthError {
  PhoneAlreadyExist({required super.message});
}

class PhoneNotRegistered extends BaseAuthError {
  PhoneNotRegistered({required super.message});
}

class ServerError extends BaseAuthError {
  ServerError({required super.message});
}

class NoLocalToken extends BaseAuthError {
  NoLocalToken({required super.message});
}
