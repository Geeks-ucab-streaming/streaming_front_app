class JwtToken {
  JwtToken(this.value);
  final String value;

  @override
  String toString() {
    return '{token_value: $value}';
  }
}
