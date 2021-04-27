import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:time_trace/utils/common_colors.dart';

import 'app.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: CommonColors.scafflodColor, // status bar color
    statusBarBrightness: Brightness.dark, //status bar brigtness
    statusBarIconBrightness: Brightness.dark, //status barIcon Brightness
  ));
  runApp(App());
}
