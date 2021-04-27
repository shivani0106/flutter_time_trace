import 'package:flutter/cupertino.dart';
import 'package:intl/intl.dart';

class GrettingCardViewModel with ChangeNotifier {
  BuildContext mContext;
  var formattedDate;
  var formattedDay;
  var time;
  String greeting;
  void attahContext(BuildContext context) {
    mContext = context;
    getDateTime();
    notifyListeners();
  }

  void getDateTime() {
    DateTime todayDate = DateTime.now();
    formattedDate = DateFormat.yMMMMd().format(todayDate);
    formattedDay = DateFormat.EEEE().format(todayDate);
    time = DateTime.now().hour;
    if (time < 12) {
      greeting = 'Morning';
    } else if (time < 17) {
      greeting = 'Afternoon';
    } else {
      greeting = 'Evening';
    }
    notifyListeners();
  }
}
