import 'package:intl/intl.dart';

class ConvertDate {
  static String date(int timestamp) {
    final DateTime dateTime =
        DateTime.fromMillisecondsSinceEpoch(timestamp * 1000);
    final formattedDateTime = DateFormat('EEEE dd •').add_jm().format(dateTime);

    return formattedDateTime;
  }

  static String hour(int timestamp) {
    {
      final DateTime dateTime =
          DateTime.fromMillisecondsSinceEpoch(timestamp * 1000);
      final formattedDateTime = DateFormat().add_jm().format(dateTime);

      return formattedDateTime;
    }
  }
}
