import 'package:flutter/material.dart';

import 'app_color_scheme.dart';

class AppBarThemeApp {
  static AppBarTheme appBarTheme = AppBarTheme(
    color: AppColorScheme.grey[50],
    elevation: 4,
    // shadowColor: Colors.blueGrey[900], //AppColors.azulClaro,
    centerTitle: true,
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
