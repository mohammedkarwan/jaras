import 'package:ee/packages/style/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../constants/constants.dart';

ThemeData lightMode = ThemeData(
  primaryColor: Colors.white70,
  scaffoldBackgroundColor: Colors.white,
  appBarTheme: const AppBarTheme(
    backgroundColor: secondColor,
    elevation: 0,
    systemOverlayStyle: SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
    ),
  ),
  popupMenuTheme: const PopupMenuThemeData(color: secondColor),
  colorScheme: ThemeData().colorScheme.copyWith(
        primary: defaultColor,
      ),
  textTheme: const TextTheme(
    bodyText1: TextStyle(fontFamily: "CairoB", color: Colors.black),
    bodyText2: TextStyle(fontFamily: "CairoB", color: Colors.white),
    subtitle1: TextStyle(fontFamily: "Cairo", color: Colors.black),
    subtitle2: TextStyle(fontFamily: "Cairo", color: Colors.white),
    caption: TextStyle(color: Colors.grey),
  ),
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    backgroundColor: secondColor,
    unselectedItemColor: Colors.grey,
  ),
  dividerTheme: DividerThemeData(
    color: myFavColor2,
  ),
);
