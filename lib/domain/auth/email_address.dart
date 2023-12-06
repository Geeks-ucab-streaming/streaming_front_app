import 'package:equatable/equatable.dart';

class EmailAddress extends Equatable {
  final String value;

  const EmailAddress(this.value);

  // equatable method to compare
  @override
  List<Object> get props => [value];

  // equatable method to print as a string
  @override
  bool get stringify => true;
}
