import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:time_trace/model/app_model.dart';
import 'package:time_trace/utils/common_colors.dart';
import 'package:time_trace/view/greeting/gretting_card_view_model.dart';
import 'package:time_trace/view/home/home_view.dart';
import 'package:time_trace/view/home/home_view_model.dart';

class App extends StatefulWidget {
  @override
  AppState createState() {
    return AppState();
  }
}

class AppState extends State<App> {
  final _app = AppModel();
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<AppModel>.value(
      value: _app,
      child: Consumer<AppModel>(
        builder: (context, value, child) {
          value.isLoading = false;
          if (value.isLoading) {
            return Container(
              color: Theme.of(context).backgroundColor,
            );
          }
          return MultiProvider(
              providers: [
                ChangeNotifierProvider(create: (context) => HomeViewModel()),
                ChangeNotifierProvider(
                    create: (context) => GrettingCardViewModel())
              ],
              child: MaterialApp(
                debugShowCheckedModeBanner: false,
                home: Home(),
                theme: ThemeData(
                    scaffoldBackgroundColor: CommonColors.scafflodColor),
              ));
        },
      ),
    );
  }
}
