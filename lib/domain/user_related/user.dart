import 'phone_number.dart';
import 'subscription.dart';

class User {
  const User(
    this.id,
    this.name,
    this.password,
    this.cellphoneNumber,
    this.email,
    this.subscription,
  );

  final String id;
  final String name;
  final String password;
  final PhoneNumber cellphoneNumber;
  final String email;
  final Subscription subscription;
}
