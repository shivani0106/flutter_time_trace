import 'package:flutter/cupertino.dart';

class CommonUtils {
  static double getHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }

  static double getWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  static double getStatusPadding(BuildContext context) {
    return MediaQuery.of(context).padding.top;
  }
}
