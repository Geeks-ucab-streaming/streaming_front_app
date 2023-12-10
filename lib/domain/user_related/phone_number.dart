import '../enums/phone_number_prefix_enum.dart';

class PhoneNumber {
  const PhoneNumber(this.value, this.prefix);

  final String value;
  final PhoneNumberPrefixEnum prefix;
}
