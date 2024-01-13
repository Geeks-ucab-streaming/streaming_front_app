import '../../enums/phone_number_prefix_enum.dart';

class Phone {
  const Phone(this.number, this.prefix);

  final PhoneNumber number;
  final PhoneNumberPrefixEnum prefix;

  int getNumber() {
    return number.number;
  }

  int getPrefix() {
    return prefix.value;
  }

  int getPhoneNumber() {
    return prefix.value * 10000000 + number.number;
  }
}

//Value objects:
class PhoneNumber {
  PhoneNumber(this.number) {
    assert(number <= 9999999);
  }

  final int number;
}
