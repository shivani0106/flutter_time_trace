import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:time_trace/utils/common_colors.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';

final countPrecentIndicator = Container(
    child: SleekCircularSlider(
  min: 0,
  max: 10,
  initialValue: 0,
  appearance: CircularSliderAppearance(),
  onChange: (double value) {
    print(value);
  },
  innerWidget: (double vale) {
    Container(
      height: 40,
      width: 40,
      color: CommonColors.white,
      child: Text("djsjks"),
    );
  },
));
