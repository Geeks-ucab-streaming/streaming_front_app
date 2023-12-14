import '../value_objects/value_objects.dart';
import 'entities.dart';

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
  final EmailAddress email;
  final Subscription subscription;
}
