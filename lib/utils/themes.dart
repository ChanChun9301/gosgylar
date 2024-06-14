import 'package:flutter/material.dart';

ThemeData lightTheme = ThemeData(
  secondaryHeaderColor: const Color(0xff0f4064),
  appBarTheme: const AppBarTheme(backgroundColor: Colors.transparent),
  colorScheme: const ColorScheme.dark(
    background: Color(0xffecf2ff),
    primary: Color(0xff0f4064),
    secondary: Colors.black,
    secondaryContainer: Colors.white,
    primaryContainer: Colors.white,
  ),
);

ThemeData darkTheme = ThemeData(
  // brightness: Brightness.dark,
  secondaryHeaderColor: Colors.grey[200]!,
  colorScheme: ColorScheme.dark(
      background: const Color(0xff131621),
      primary: const Color(0xff1c212e),
      secondary: Colors.grey[200]!,
      primaryContainer: const Color(0xff1c212e),
      secondaryContainer: const Color(0xff1c212e)),
);
