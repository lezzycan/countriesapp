import 'package:flutter/material.dart';

import 'constants.dart';

class CustomThemes {
  //darkTheme
  static final darkTheme = ThemeData(
    appBarTheme: AppBarTheme(
        elevation: 0,
        shadowColor: Constants.scaffoldBackgrounddarkTheme,
        backgroundColor: Constants.scaffoldBackgrounddarkTheme,
        //  backgroundColor: Constants.scaffoldBackgroundlightTheme,
        // titleTextStyle: const TextStyle(color: Color(0xFFEAECF0),fontSize: 20,fontWeight: FontWeight.bold),
        toolbarTextStyle: const TextStyle(color: Colors.white)),
    scaffoldBackgroundColor: Constants.scaffoldBackgrounddarkTheme,
    colorScheme: ColorScheme(
        primary: Colors.black,
        onPrimary: Colors.black,
        secondary: Color(0XFFF2F4F7),
        onSecondary: Color(0XFFF2F4F7),
        error: Colors.redAccent,
        onError: Colors.redAccent,
        background: Colors.white,
        onBackground: Colors.white,
        surface: Color(0XFF000F24),
        onSurface: Colors.white,
        brightness: Brightness.dark),
  );

//lightTheme
  static final lightTheme = ThemeData(
    //  fontFamily: GoogleFonts.openSans().fontFamily,
    appBarTheme: AppBarTheme(
        backgroundColor: Constants.scaffoldBackgroundlightTheme,
        //   color: Constants.scaffoldBackgrounddarkTheme,
        // titleTextStyle: const TextStyle(color: Colors.black,fontSize: 40,fontWeight: FontWeight.bold),

        elevation: 0
        // toolbarTextStyle: const TextStyle(color: Colors.black, fontSize: 40)
        ),
    scaffoldBackgroundColor: Constants.scaffoldBackgroundlightTheme,
    colorScheme: ColorScheme(
      primary: Colors.white,
      onPrimary: Colors.white,
      secondary: Color(0XFFFFFFF),
      onSecondary: Color(0XFFFFFFF),
      error: Colors.redAccent,
      onError: Colors.redAccent,
      background: Colors.white,
      onBackground: Colors.white,
      surface: Color(0XFF000F24),
      onSurface: Colors.white,
      brightness: Brightness.light,
    ),
  );
}
