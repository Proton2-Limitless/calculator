import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

var kColorScheme = ColorScheme.fromSeed(
  seedColor: const Color.fromARGB(255, 96, 59, 181),
);

var kDarkColorScheme = ColorScheme.fromSeed(
  brightness: Brightness.dark,
  seedColor: const Color.fromARGB(255, 5, 99, 125),
);

ThemeData lightMode = ThemeData(
  brightness: Brightness.light,
  textTheme: const TextTheme().copyWith(
    bodyLarge: TextStyle(
        color: kColorScheme.primary,
        fontStyle: GoogleFonts.latoTextTheme().bodyLarge!.fontStyle),
  ),
  colorScheme: kColorScheme,
);
ThemeData darkMode = ThemeData(
  brightness: Brightness.dark, // Change brightness to dark
  colorScheme: kDarkColorScheme,
  textTheme: const TextTheme().copyWith(
    bodyLarge: TextStyle(
        color: kDarkColorScheme.primary,
        fontStyle: GoogleFonts.latoTextTheme().bodyLarge!.fontStyle),
  ),
);
