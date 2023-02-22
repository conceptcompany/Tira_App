import 'package:intl/intl.dart';

class DateConverter {
  static String dateToString(String? dateTime) {
    // return dateTime == null ? '' : DateFormat(format).format(dateTime);
    DateTime parseDate = DateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'")
        .parse(dateTime ?? '2023-01-29T11:36:02.000000Z');
    var inputDate = DateTime.parse(parseDate.toString());
    var outputFormat = DateFormat('dd/MM/yyyy');
    return outputFormat.format(inputDate);
  }

  static String dateWithTimeToString(String? dateTime) {
    // return dateTime == null ? '' : DateFormat(format).format(dateTime);
    DateTime parseDate = DateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'")
        .parse(dateTime ?? '2023-01-29T11:36:02.000000Z');
    var inputDate = DateTime.parse(parseDate.toString());
    var outputFormat = DateFormat('dd/MM/yyyy h:mm a');
    return outputFormat.format(inputDate);
  }
}
