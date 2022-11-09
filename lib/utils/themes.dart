import 'package:flutter/material.dart';

import 'constants.dart';

class CustomThemes {
  //darkTheme
  static final darkTheme = ThemeData(
   appBarTheme: const AppBarTheme(
     elevation: 0,
   ),
   scaffoldBackgroundColor: Constants.scaffoldBackgrounddarkTheme,
   colorScheme: const ColorScheme.dark(),
   //brightness: Brightness.dark
  );

//lightTheme
  static final lightTheme = ThemeData(
   appBarTheme: const AppBarTheme(
     elevation: 0,
   ),
   scaffoldBackgroundColor: Constants.scaffoldBackgroundlightTheme,
   colorScheme: const ColorScheme.light(),
   //brightness: Brightness.dark
  );
}
