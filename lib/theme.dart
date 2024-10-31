import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final darkTheme = ThemeData(
  // textTheme: GoogleFonts.nunitoSansTextTheme(),
  textTheme: GoogleFonts.outfitTextTheme(),
  colorScheme: const ColorScheme.dark(
    primary: Color.fromRGBO(230, 199, 255, 1.0),
    surface: Color.fromRGBO(30, 30, 30, 1.0),
    onSurface: Colors.white,
    background: Colors.black,
  ),
  navigationBarTheme: const NavigationBarThemeData(
    backgroundColor: Color.fromRGBO(30, 30, 30, 1.0),
    indicatorColor: Colors.white,
    indicatorShape: CircleBorder()
  ),
);
