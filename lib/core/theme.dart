import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final ThemeData appTheme = ThemeData(
  brightness: Brightness.light,
  scaffoldBackgroundColor: const Color(0xFFF5F5F5),
  textTheme: GoogleFonts.poppinsTextTheme(), // 👈 Match HTML font
  primaryColor: const Color(0xFF1E1E1E),
  colorScheme: ColorScheme.fromSwatch().copyWith(
    primary: const Color(0xFF1E1E1E),
    secondary: const Color(0xFFDAA520),
  ),
);
