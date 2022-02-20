import 'package:flutter/material.dart';

import 'app_color_scheme.dart';

class AppBarThemeApp {
  static var appBarTheme = AppBarTheme(
    backgroundColor: AppColorScheme.grey[50],
    color: AppColorScheme.grey[50],
    elevation: 6,
    foregroundColor: AppColorScheme.grey[50],
    toolbarHeight: 48,
    
    // shadowColor: Colors.blueGrey[900], //AppColors.azulClaro,
    centerTitle: false,
    // iconTheme: IconThemeData(
    //   color: AppColors.azulMarinhoEscuro,
    // ),
    titleSpacing: 0,
    // textTheme: TextTheme(
    //   headline6: TextStyle(
    //     color: AppColors.azulMarinhoEscuro,
    //     fontSize: 18,
    //     fontWeight: FontWeight.bold,
    //   ),
    // ),
  );
}
