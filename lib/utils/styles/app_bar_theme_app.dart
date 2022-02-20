import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_color_scheme.dart';

class AppBarThemeApp {
  static var appBarTheme = AppBarTheme(
    backgroundColor: Colors.grey[50],
    foregroundColor: Colors.grey[50],
    elevation: 0,
    titleTextStyle: GoogleFonts.montserrat(
      fontSize: 20,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.15,
      color: AppColorScheme.black,
    ),
    // color: AppColorScheme.white,
    // textTheme: AppTextTheme.textTheme,
    // shadowColor: Colors.blueGrey[900], //AppColors.azulClaro,
    centerTitle: true,
    iconTheme: IconThemeData(
      color: AppColorScheme.darkBlue.shade600,
    ),
    titleSpacing: 0,
    // textTheme: TextTheme(
    //   headline6: TextStyle(
    //     color: AppColors.azulMarinhoEscuro,
    //     fontSize: 18,
    //     fontWeight: FontWeight.bold,
    //   ),
    // ),
    toolbarHeight: 58,
  );
}
