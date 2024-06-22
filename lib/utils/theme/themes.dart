import 'package:flutter/material.dart';
import 'package:flutter_chanakya_niti/utils/constants.dart';
import 'package:google_fonts/google_fonts.dart';

class Themes{
  // Light theme data
  static final ThemeData lightTheme = ThemeData(
    colorScheme: ColorScheme.light(
      primary: primaryColor,
      brightness: Brightness.light
    ),
    textTheme: TextTheme(
      titleLarge: GoogleFonts.varelaRound(),
      titleMedium: GoogleFonts.varelaRound(),
      titleSmall: GoogleFonts.varelaRound(),
      bodyLarge: GoogleFonts.varelaRound(),
      bodyMedium: GoogleFonts.varelaRound(),
      bodySmall: GoogleFonts.varelaRound(),
    ),
  );


  // Dark theme data
  static final ThemeData darkTheme = ThemeData(
    colorScheme: ColorScheme.dark(
        primary: primaryColor,
        brightness: Brightness.dark,
    ),
    textTheme: TextTheme(
      titleLarge: GoogleFonts.varelaRound(),
      titleMedium: GoogleFonts.varelaRound(),
      titleSmall: GoogleFonts.varelaRound(),
      bodyLarge: GoogleFonts.varelaRound(),
      bodyMedium: GoogleFonts.varelaRound(),
      bodySmall: GoogleFonts.varelaRound(),
    ),
  );
}