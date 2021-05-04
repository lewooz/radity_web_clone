import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

extension CustomColorScheme on ColorScheme{
  Color get black => Color(0xff000000);
  Color get stratos => Color(0xff01073C);
}

extension CustomTextTheme on TextTheme{
  TextStyle get headline23 => GoogleFonts.nunitoSans(
    fontSize: 23,
    fontWeight: FontWeight.w700
  );
  TextStyle get headline42 => GoogleFonts.nunitoSans(
      fontSize: 42,
      fontWeight: FontWeight.w900,
      color: Colors.white
  );
}