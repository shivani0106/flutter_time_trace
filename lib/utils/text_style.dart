import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:time_trace/utils/common_colors.dart';

class CommonTextStyle {
  static TextStyle getAppFontStyle(
      {Color color,
      double fontSize,
      FontWeight fontWeight,
      FontStyle fontStyle,
      TextDecoration decoration,
      double letterSpacing}) {
    return GoogleFonts.roboto(
        textStyle: TextStyle(
            color: color ?? CommonColors.black,
            letterSpacing: letterSpacing ?? 0.3,
            decoration: decoration ?? TextDecoration.none,
            fontSize: fontSize ?? 14,
            fontWeight: fontWeight ?? FontWeight.normal,
            fontStyle: fontStyle ?? FontStyle.normal));
  }
}
