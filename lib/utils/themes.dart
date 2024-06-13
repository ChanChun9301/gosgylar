import 'package:flutter/material.dart';

ThemeData lightTheme = ThemeData(
  secondaryHeaderColor: const Color(0xff296e48),
  appBarTheme: const AppBarTheme(backgroundColor: Colors.transparent),
  colorScheme: const ColorScheme.dark(
    background: Colors.white,
    primary: Color(0xff296e48),
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
