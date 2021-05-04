import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Styles {
  static ThemeData customThemeData(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return ThemeData(
      primaryColor: Color(0xff040B42),
      primaryColorLight: Color(0xff091361),
      primaryColorDark: Color(0xff02072F),
      disabledColor: Color(0xff9ba9bb),
      highlightColor: Color(0xff0073f7),
      accentColor: Colors.white,
      textTheme: GoogleFonts.nunitoSansTextTheme(textTheme).copyWith(
        headline2:
            GoogleFonts.nunitoSans(fontSize: 66, fontWeight: FontWeight.w900),
        headline4:
            GoogleFonts.nunitoSans(fontSize: 32, fontWeight: FontWeight.w900),
        subtitle1:
            GoogleFonts.nunitoSans(fontSize: 18),
        bodyText1:
            GoogleFonts.nunitoSans(fontSize: 16),
      ),
    );
  }
}
