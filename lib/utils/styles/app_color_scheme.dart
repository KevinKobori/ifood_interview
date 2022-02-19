import 'package:flutter/material.dart';

import 'app_theme_data.dart';

class AppColorScheme {
  // static ColorScheme get colorScheme =>
  //     AppThemeData.isDark ? colorSchemeDark : colorSchemeLight;

  static final ColorScheme colorSchemeLight = ColorScheme.fromSwatch(
    brightness: Brightness.light,
    backgroundColor: Color(0xff32353D),
    accentColor: accentColor,
    primarySwatch: primarySwatch,
    primaryColorDark: colorPrimaryDarkSplash,
    errorColor: AppColorScheme.red,
  );

  static final ColorScheme colorSchemeDark = ColorScheme.fromSwatch(
    brightness: Brightness.dark,
    backgroundColor: Color(0xff32353D),
    accentColor: accentColor,
    primarySwatch: primarySwatchDark,
    primaryColorDark: colorPrimaryDarkSplash,
    errorColor: AppColorScheme.red,
  );

  /// http://mcg.mbitson.com/
  static const MaterialColor primarySwatch = const MaterialColor(0xFF20c99f, {
    50: Color.fromRGBO(32, 201, 159, .1),
    100: Color.fromRGBO(32, 201, 159, .2),
    200: Color.fromRGBO(32, 201, 159, .3),
    300: Color.fromRGBO(32, 201, 159, .4),
    400: Color.fromRGBO(32, 201, 159, .5),
    500: Color.fromRGBO(32, 201, 159, .6),
    600: Color.fromRGBO(32, 201, 159, .7),
    700: Color.fromRGBO(32, 201, 159, .8),
    800: Color.fromRGBO(32, 201, 159, .9),
    900: Color.fromRGBO(32, 201, 159, 1),
  });

  static const MaterialColor primarySwatchDark = MaterialColor(0xff1EB993, {
    50: Color.fromRGBO(30, 185, 147, .1),
    100: Color.fromRGBO(30, 185, 147, .2),
    200: Color.fromRGBO(30, 185, 147, .3),
    300: Color.fromRGBO(30, 185, 147, .4),
    400: Color.fromRGBO(30, 185, 147, .5),
    500: Color.fromRGBO(30, 185, 147, .6),
    600: Color.fromRGBO(30, 185, 147, .7),
    700: Color.fromRGBO(30, 185, 147, .8),
    800: Color.fromRGBO(30, 185, 147, .9),
    900: Color.fromRGBO(30, 185, 147, 1),
  });

  static const Color accentColor = Color(0xFFFFAD29);

  static const Color black = Color(0xff000000);
  static const Color white = MaterialColor(0xffffffff, {
    500: Color(0xffffffff),
    600: Color(0xffffffff),
  });
  static const MaterialColor red = MaterialColor(0xffFF6565, {
    500: Color(0xffFF6565),
    600: Color(0xffEA545F),
  });

  static const Color colorPrimaryDarkSplash = Color(0xff23a887);
  static const Color colorPrimaryDarkHighlight = Color(0x6623a887);

  static const Color accentLightColor = Color(0xfffff6e9);

  static const Color windowBackground = Color(0xffF6F6F6);

  static const grey = MaterialColor(0xffB1B1B1, {
    100: Color(0xffF0F0F0),
    200: Color(0xffF6F6F6),
    300: Color(0xffF3F3F3),
    400: Color(0xffDBDBDB),
    500: Color(0xffB1B1B1),
    600: Color(0xff5A5A5A),
  });

  static const MaterialColor orange = MaterialColor(0xffFFAD29, <int, Color>{
    500: Color(0xffFFAD29),
  });

  static const Color textInputBorder = Color(0x14000000);
  static const Color hintColor = Color(0xff5E5E5E);
  static Color shadowTealColor = Colors.teal[100].withOpacity(0.7);
  static const Color shadowColor = Color(0xffEFEFEF);
  static const Color shadowColorDark = Color(0x1100001A);

  static const Color textColorPrimary = Color(0xFF2D2D2D);
  static const Color textColorPrimaryInverse = Color(0xFFFFFFFF);
  static const Color textColorSecondary = Color(0xFF949494);

  static const green = MaterialColor(0xff4BB543, {
    500: Color(0xff4BB543),
  });
}
