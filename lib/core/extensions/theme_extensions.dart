import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

extension CustomColorScheme on ColorScheme{
  Color get black => Color(0xff000000);
  Color get stratos => Color(0xff01073C);
  Color get trout => Color(0xff474956);
  Color get ebonyClay => Color(0xff282C47);
  Color get tahitiGold => Color(0xffEA8F07);
  Color get silver => Color(0xffC8C8C8);
  Color get stormGray => Color(0xff737687);
  Color get athensGray => Color(0xffF8F8F9);
  Color get comet => Color(0xff585C77);
  Color get spunPearl => Color(0xffadaab7);
  Color get mischka => Color(0xffE1E1E6);
  Color get fruitSalad => Color(0xff51A553);
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
  TextStyle get headline28 => GoogleFonts.nunitoSans(
      fontSize: 28,
      fontWeight: FontWeight.w900,
  );
  TextStyle get headline24 => GoogleFonts.nunitoSans(
    fontSize: 24,
    fontWeight: FontWeight.w900,
  );
}