  import 'package:intl/intl.dart';

String editDate() {
    var currentDate = DateTime.now();
    var formattedCurrentDate = DateFormat('yyyy-MM-dd').format(currentDate);
    return formattedCurrentDate;
  }