import '../../enums/enums.dart';

class PhoneNumber {
  const PhoneNumber(this.value, this.prefix);

  final String value;
  final PhoneNumberPrefixEnum prefix;
}
