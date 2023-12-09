import 'subscription.dart';

class User {
  const User(
    this.name,
    this.password,
    this.cellphoneNumber,
    this.email,
    this.subscription,
  );

  final String name;
  final String password;
  final String cellphoneNumber;
  final String email;
  final Subscription subscription;
}
