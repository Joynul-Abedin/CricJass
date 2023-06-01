import 'package:intl/intl.dart';

class Utils {
  String formatDate(String date) {
    final DateTime dateTime = DateTime.parse(date);
    final DateFormat formatter = DateFormat('dd/MM/yy HH:mm');
    final String formatted = formatter.format(dateTime);
    return formatted;
  }
}
