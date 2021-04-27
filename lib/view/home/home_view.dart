import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:time_trace/utils/common_colors.dart';
import 'package:time_trace/utils/common_utils.dart';
import 'package:time_trace/view/greeting/gretting_card_view.dart';
import 'package:time_trace/view/home/count_percent_indicator.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(top: CommonUtils.getStatusPadding(context)),
        child: Scaffold(
            body: Column(
          mainAxisSize: MainAxisSize.max,
          children: [GreetingCardView(), countPrecentIndicator],
        )));
  }
}
