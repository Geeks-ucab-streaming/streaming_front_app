// enhanced num for the cellphone number prefix
enum PhoneNumberPrefixEnum implements Comparable<PhoneNumberPrefixEnum> {
  // enum values
  movistar(value: 0414),
  digitel(value: 0412);

  const PhoneNumberPrefixEnum({
    required this.value,
  });

  final int value;

  @override
  int compareTo(PhoneNumberPrefixEnum other) => value - other.value;
}

