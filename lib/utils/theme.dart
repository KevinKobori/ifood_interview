import 'package:flutter/material.dart';

import 'constants.dart';

ThemeData theme() {
  return ThemeData(
    // androidOverscrollIndicator: ,
    appBarTheme: appBarTheme(),
    // applyElevationOverlayColor: ,
    // backgroundColor: ,
    // bannerTheme: ,
    // bottomAppBarColor: ,
    // bottomAppBarTheme: ,
    // bottomNavigationBarTheme: ,
    // bottomSheetTheme: ,
    // brightness: ,
    // buttonBarTheme: ,
    // buttonTheme: ,
    canvasColor: Colors.white,
    // cardColor: ,
    // cardTheme: ,
    // checkboxTheme: ,
    // chipTheme: ,
    // colorScheme: ,
    // cupertinoOverrideTheme: ,
    // dataTableTheme: ,
    // dialogBackgroundColor: ,
    // dialogTheme: ,
    // disabledColor: ,
    // dividerColor: ,
    // dividerTheme: ,
    // drawerTheme: ,
    // elevatedButtonTheme: ,
    // errorColor: ,
    // floatingActionButtonTheme: ,
    // focusColor: ,
    fontFamily: "Muli",
    // highlightColor: ,
    // hintColor:  ,
    // hoverColor: ,
    // iconTheme: ,
    // indicatorColor: ,
    inputDecorationTheme: inputDecorationTheme(),
    // listTileTheme: ,
    // materialTapTargetSize: ,
    // navigationBarTheme: ,
    // navigationRailTheme: ,
    // outlinedButtonTheme: ,
    pageTransitionsTheme: const PageTransitionsTheme(builders: {
      TargetPlatform.android: CupertinoPageTransitionsBuilder(),
    }),
    // pageTransitionsTheme: PageTransitionsTheme(
    //   builders: {
    //     TargetPlatform.android: CustomPageTransitionsBuilder(),
    //     TargetPlatform.iOS: CustomPageTransitionsBuilder(),
    //   },
    // ), // ANOTHER OPTION
    // platform: ,
    // popupMenuTheme: ,
    primaryColor: Colors.black,
    // primaryColor: Color(0xFFFF7643), // ANOTHER OPTION
    // primaryColorBrightness: ,
    // primaryColorDark: ,
    // primaryColorLight: ,
    // primaryIconTheme: ,
    primarySwatch: primaryBlack,
    // primaryTextTheme: ,
    // progressIndicatorTheme: ,
    // radioTheme: ,
    scaffoldBackgroundColor: Colors.white,
    // scrollbarTheme: ,
    // secondaryHeaderColor: ,
    // selectedRowColor: ,
    // shadowColor: ,
    // sliderTheme: ,
    // snackBarTheme: ,
    // splashColor: ,
    // splashFactory: ,
    // switchTheme: ,
    // tabBarTheme: ,
    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
        foregroundColor: MaterialStateProperty.resolveWith<Color>(
          (Set<MaterialState> states) => states.contains(MaterialState.disabled)
              ? Colors.grey[700]
              : Colors.white,
        ),
        backgroundColor: MaterialStateProperty.resolveWith<Color>(
          (Set<MaterialState> states) => Colors.transparent,
        ),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          const RoundedRectangleBorder(
            // ignore: avoid_redundant_argument_values
            borderRadius: BorderRadius.zero,
          ),
        ),
      ),
    ),
    // textSelectionTheme: ,
    textTheme: textTheme(),
    // timePickerTheme: ,
    // toggleButtonsTheme: ,
    // toggleableActiveColor: ,
    // tooltipTheme: ,
    // typography: ,
    // unselectedWidgetColor: ,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    // accentColor: Colors.black, // DEPRECATED
    // accentColor: Color(0xFFFF7643), // DEPRECATED
    // accentColorBrightness: , // DEPRECATED
    // accentIconTheme: , // DEPRECATED
    // accentTextTheme: , // DEPRECATED
    // buttonColor: , // DEPRECATED
    // cursorColor: , // DEPRECATED
    // fixTextFieldOutlineLabel: , // DEPRECATED
    // textSelectionColor: , // DEPRECATED
    // textSelectionHandleColor: , // DEPRECATED
    // useTextSelectionTheme: , // DEPRECATED
  );
}

InputDecorationTheme inputDecorationTheme() {
  final OutlineInputBorder _outlineInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(28),
    borderSide: const BorderSide(color: kTextColor),
    gapPadding: 10,
  );
  return InputDecorationTheme(
    // If  you are using latest version of flutter then lable text and hint text shown like this
    // if you r using flutter less then 1.20.* then maybe this is not working properly
    // if we are define our floatingLabelBehavior in our theme then it's not applayed
    // alignLabelWithHint: ,
    border: _outlineInputBorder,
    // constraints: ,
    contentPadding: const EdgeInsets.symmetric(horizontal: 42, vertical: 20),
    // counterStyle: ,
    // disabledBorder: ,
    enabledBorder: _outlineInputBorder,
    // errorBorder: ,
    // errorMaxLines: ,
    // errorStyle: ,
    // fillColor: ,
    // filled: ,
    floatingLabelBehavior: FloatingLabelBehavior.always,
    // floatingLabelStyle: ,
    // focusColor: ,
    focusedBorder: _outlineInputBorder,
    // focusedErrorBorder: ,
    // helperMaxLines: ,
    // helperStyle: ,
    // hintStyle: ,
    // hoverColor: ,
    // iconColor: ,
    // isCollapsed: ,
    // isDense: ,
    // labelStyle: ,
    // prefixIconColor: ,
    // prefixStyle: ,
    // suffixIconColor: ,
    // suffixStyle: ,
  );
}

TextTheme textTheme() {
  return const TextTheme(
    // bodyText1: TextStyle(color: kTextColor), // ORIGINAL OPTION
    bodyText1: TextStyle(color: Colors.amber),
    // bodyText2: TextStyle(color: kTextColor), // ORIGINAL OPTION
    bodyText2: TextStyle(color: Colors.blue),
    button: TextStyle(color: Colors.brown),
    caption: TextStyle(color: Colors.cyan),
    headline1: TextStyle(color: Colors.green),
    headline2: TextStyle(color: Colors.grey),
    headline3: TextStyle(color: Colors.indigo),
    headline4: TextStyle(color: Colors.orange),
    headline5: TextStyle(color: Colors.pink),
    headline6: TextStyle(color: Colors.purple),
    overline: TextStyle(color: Colors.red),
    subtitle1: TextStyle(color: Colors.teal),
    subtitle2: TextStyle(color: Colors.yellow),
  );
}

AppBarTheme appBarTheme() {
  return const AppBarTheme(
    centerTitle: true,
    titleTextStyle: TextStyle(
      color: kTextColor, //Color(0XFF8B8B8B) // ANOTHER OPTION
      fontSize: 18,
    ),
    color: Colors.white,
    elevation: 0,
    // actionsIconTheme: ,
    // backgroundColor: Colors.transparent, // ANOTHER OPTION
    // foregroundColor: ,
    // shadowColor: ,
    // shape: ,
    // systemOverlayStyle: ,
    // titleSpacing: ,
    // toolbarHeight: ,
    // toolbarTextStyle: ,
    iconTheme: IconThemeData(
      color: kTextColor,
    ),
    // backwardsCompatibility: , // DEPRECATED
    // brightness: Brightness.light, // DEPRECATED
    // textTheme: TextTheme(
    //   headline6: TextStyle(color: Color(0XFF8B8B8B), fontSize: 18),
    // ), // DEPRECATED
  );
}
