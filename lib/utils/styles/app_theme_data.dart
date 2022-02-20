import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'app_bar_theme_app.dart';
import 'app_color_scheme.dart';
import 'app_text_theme.dart';

ThemeData themeData() {
  // static bool get isDark => ThemeDataSnow.isDark;

  // static ThemeData get themeData =>
  //     ThemeDataSnow.isDark ? themeDataDark : themeDataLight;

  return ThemeData(
    brightness: Brightness.light,
    // accentColorBrightness: Brightness.light,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    primarySwatch: AppColorScheme.primarySwatch,
    // accentColor: AppColorScheme.primarySwatch,// .accentColor, // TODO
    textTheme: AppTextTheme.textTheme,
    appBarTheme: AppBarThemeApp.appBarTheme,
    // colorScheme: AppColorScheme.colorSchemeLight,
    scaffoldBackgroundColor: AppColorScheme.grey[50],
    // highlightColor: Colors.transparent,
    splashColor: Colors.transparent,
    // hintColor: Colors.transparent,
    // focusColor: Colors.transparent,
    // hoverColor: Colors.transparent,
    errorColor: AppColorScheme.primarySwatch,
    pageTransitionsTheme: PageTransitionsTheme(
      builders: {
        TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
        TargetPlatform.android: FadeUpwardsPageTransitionsBuilder(),
        TargetPlatform.fuchsia: ZoomPageTransitionsBuilder(),
      },
    ),
    cupertinoOverrideTheme: CupertinoThemeData(
      brightness: Brightness.light,
    ),
    iconTheme: IconThemeData(
      color: AppColorScheme.primarySwatch[500],
    ),
    buttonTheme: ButtonThemeData(
      colorScheme: AppColorScheme.colorSchemeLight,
      textTheme: ButtonTextTheme.primary,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0)),
    ),
    cardTheme: CardTheme(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0)),
      elevation: 4.0,
      shadowColor: AppColorScheme.shadowTealColor,
    ),
    // textButtonTheme: TextButtonThemeData(
    //   style: TextButton.styleFrom(
    //     elevation: 0.0,
    //   ),
    // ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        elevation: 5.0,
        shadowColor: AppColorScheme.shadowTealColor,
      ),
    ),

    // outlinedButtonTheme: OutlinedButtonThemeData(
    //   style: OutlinedButton.styleFrom(
    //     elevation: 0.0,
    //   ),
    // ),
  );

  // static final ThemeData themeDataDark = ThemeData(
  //   visualDensity: VisualDensity.adaptivePlatformDensity,
  //   brightness: Brightness.dark,
  //   accentColorBrightness: Brightness.dark,
  //   primarySwatch: AppColorScheme.primarySwatch,
  //   accentColor: AppColorScheme.accentColor,
  //   textTheme: AppTextTheme.textTheme,
  //   appBarTheme: AppBarThemeApp.appBarTheme,
  //   colorScheme: AppColorScheme.colorSchemeDark,
  //   pageTransitionsTheme: const PageTransitionsTheme(
  //     builders: {
  //       TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
  //       TargetPlatform.android: FadeUpwardsPageTransitionsBuilder(),
  //       TargetPlatform.fuchsia: ZoomPageTransitionsBuilder(),
  //     },
  //   ),
  //   cupertinoOverrideTheme: CupertinoThemeData(
  //     brightness: Brightness.dark,
  //   ),
  //   iconTheme: IconThemeData(
  //     color: AppColorScheme.primarySwatch[500],
  //   ),
  //   buttonTheme: ButtonThemeData(
  //     colorScheme: AppColorScheme.colorSchemeDark,
  //     textTheme: ButtonTextTheme.primary,
  //   ),
  // );
}
