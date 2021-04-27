import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:time_trace/utils/common_colors.dart';
import 'package:time_trace/utils/common_utils.dart';
import 'package:time_trace/utils/text_style.dart';
import 'gretting_card_view_model.dart';

class GreetingCardView extends StatefulWidget {
  @override
  _GreetingCardViewState createState() => _GreetingCardViewState();
}

class _GreetingCardViewState extends State<GreetingCardView> {
  GrettingCardViewModel mViewModel;

  @override
  void initState() {
    Future.delayed(Duration.zero, () {
      mViewModel = Provider.of<GrettingCardViewModel>(context, listen: false);
      mViewModel.attahContext(context);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    mViewModel = Provider.of<GrettingCardViewModel>(context);
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 2),
      height: CommonUtils.getHeight(context) * 0.11,
      margin: EdgeInsets.only(top: 7),
      width: CommonUtils.getWidth(context),
      child: Card(
        color: CommonColors.white,
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 18, horizontal: 20),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    mViewModel.formattedDate.toString() ?? "",
                    style: CommonTextStyle.getAppFontStyle(
                        fontSize: 16,
                        color: CommonColors.black,
                        fontWeight: FontWeight.w400),
                  ),
                  Text(
                    "Hello, ",
                    style: CommonTextStyle.getAppFontStyle(
                        fontSize: 16,
                        color: CommonColors.black,
                        fontWeight: FontWeight.w400),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    mViewModel.formattedDay.toString() ?? "",
                    style: CommonTextStyle.getAppFontStyle(
                        fontSize: 14,
                        color: CommonColors.color_6E6E6E,
                        fontWeight: FontWeight.w400),
                  ),
                  Text(
                    mViewModel.greeting ?? "",
                    style: CommonTextStyle.getAppFontStyle(
                        fontSize: 14,
                        color: CommonColors.color_6E6E6E,
                        fontWeight: FontWeight.w400),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
