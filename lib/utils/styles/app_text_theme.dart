import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_color_scheme.dart';

abstract class AppTextTheme {
  const AppTextTheme();

  static TextTheme get textTheme => textThemeRoboto;

  static const TextStyle titleActions = const TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w600,
  );

  static TextTheme textThemeRoboto = TextTheme(
    headline1: GoogleFonts.montserrat(
      color: AppColorScheme.darkBlue.shade700,
      fontSize: 97,
      fontWeight: FontWeight.w300,
      letterSpacing: -1.5,
    ),
    headline2: GoogleFonts.montserrat(
      color: AppColorScheme.darkBlue.shade700,
      fontSize: 61,
      fontWeight: FontWeight.w300,
      letterSpacing: -0.5,
    ),
    headline3: GoogleFonts.montserrat(
      color: AppColorScheme.darkBlue.shade700,
      fontSize: 48,
      fontWeight: FontWeight.w400,
    ),
    headline4: GoogleFonts.montserrat(
      color: AppColorScheme.darkBlue.shade700,
      fontSize: 34,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.25,
    ),
    headline5: GoogleFonts.montserrat(
      color: AppColorScheme.darkBlue.shade700,
      fontSize: 24,
      fontWeight: FontWeight.w400,
    ),
    headline6: GoogleFonts.montserrat(
      color: AppColorScheme.darkBlue.shade700,
      fontSize: 20,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.15,
    ),
    subtitle1: GoogleFonts.montserrat(
      color: AppColorScheme.darkBlue.shade700,
      fontSize: 16,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.15,
    ),
    subtitle2: GoogleFonts.montserrat(
      color: AppColorScheme.darkBlue.shade700,
      fontSize: 14,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.1,
    ),
    bodyText1: GoogleFonts.montserrat(
      color: AppColorScheme.darkBlue.shade700,
      fontSize: 16,
      fontWeight: FontWeight.w600,
      letterSpacing: 0.5,
    ),
    bodyText2: GoogleFonts.montserrat(
      color: AppColorScheme.darkBlue.shade700,
      fontSize: 14,
      fontWeight: FontWeight.w600,
      letterSpacing: 0.25,
    ),
    button: GoogleFonts.montserrat(
      color: AppColorScheme.darkBlue.shade700,
      fontSize: 14,
      fontWeight: FontWeight.w500,
      letterSpacing: 1.25,
    ),
    caption: GoogleFonts.montserrat(
      color: AppColorScheme.darkBlue.shade700,
      fontSize: 12,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.4,
    ),
    overline: GoogleFonts.montserrat(
      color: Colors.grey[500],
      fontSize: 10,
      fontWeight: FontWeight.w500,
      letterSpacing: 1.5,
    ),
  );
}
