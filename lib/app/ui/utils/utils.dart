import 'package:intl/intl.dart';

class CustomUtils {
  static String formatDate(String format, DateTime dateTime) {
    return DateFormat(format).format(dateTime);
  }

  static String formatDateDatabase(String format, String dbDate) {
    final date = DateTime.parse(dbDate);
    return DateFormat(format, "id_ID").format(date);
  }
}
