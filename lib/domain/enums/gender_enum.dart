// enhanced num for the cellphone number prefix
enum GenderEnum implements Comparable<GenderEnum> {
  // enum values
  femenino(value: 'F'),
  masculino(value: 'M');

  const GenderEnum({
    required this.value,
  });

  final String value;

  @override
  int compareTo(GenderEnum other) => value.hashCode - other.value.hashCode;
}
