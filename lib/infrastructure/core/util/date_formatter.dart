import 'package:intl/intl.dart';

class DateFormatter {
  static final _formatter = DateFormat('dd-MM-yyyy');

  DateFormatter();

  static String formatDate(DateTime date) {
    return _formatter.format(date);
  }
}
