import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'constants.dart';

class CustomThemes {
  //darkTheme
  static final darkTheme = ThemeData(
    
  
    appBarTheme: AppBarTheme(
        backgroundColor: Constants.scaffoldBackgrounddarkTheme,
        //  backgroundColor: Constants.scaffoldBackgroundlightTheme,
        // titleTextStyle: const TextStyle(color: Color(0xFFEAECF0),fontSize: 20,fontWeight: FontWeight.bold),
        toolbarTextStyle: const TextStyle(color: Colors.white)),
    scaffoldBackgroundColor: Constants.scaffoldBackgrounddarkTheme,
    colorScheme: const ColorScheme.dark(),
    //brightness: Brightness.dark
  );

//lightTheme
  static final lightTheme = ThemeData(
    fontFamily: GoogleFonts.openSans().fontFamily,
    appBarTheme: AppBarTheme(
        backgroundColor: Constants.scaffoldBackgroundlightTheme,
        //   color: Constants.scaffoldBackgrounddarkTheme,
        // titleTextStyle: const TextStyle(color: Colors.black,fontSize: 40,fontWeight: FontWeight.bold),

        elevation: 0
        // toolbarTextStyle: const TextStyle(color: Colors.black, fontSize: 40)
        ),
    scaffoldBackgroundColor: Constants.scaffoldBackgroundlightTheme,
    colorScheme: const ColorScheme.light(),
    //brightness: Brightness.dark
  );
}
