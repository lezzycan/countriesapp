// ignore_for_file: constant_identifier_names, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: duplicate_ignore
class Constants {
  // Colors
  static Color scaffoldBackgrounddarkTheme = const Color(0xFF000F24);
  static Color scaffoldBackgroundlightTheme = Colors.white;

  // API URL

  static const String BASE_URL = "https://restcountries.com/v3.1/all";
  static const Color kGreyColor = Color(0xFF767680);

  // Error Code
  static const int INVALID_RESPONSE = 100;
  static const int NO_INTERNET = 101;
  static const int INVALID_FORMAT = 102;
  static const int UNKNOWN_ERROR = 103;

  // SwipesStyle
  static TextStyle swipesTextStyle1 = TextStyle(
    fontSize: 15.sp,
  );
  static TextStyle swipesTextStyle2 =
      TextStyle(fontSize: 12.sp, fontFamily: 'Poppins-italic.ttf');

  // filter TextStyle
  static TextStyle filterTextStyle = TextStyle(
    fontSize: 20,
  );
}
