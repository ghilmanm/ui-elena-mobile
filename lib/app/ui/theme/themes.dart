import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/constants/colors.dart';

class Themes {
  final lightTheme = ThemeData.light().copyWith(
    colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.indigo),
    cardColor: Colors.white,
    scaffoldBackgroundColor: Colors.white,
    shadowColor: Colors.grey,
    textTheme: GoogleFonts.nunitoTextTheme(ThemeData.light().textTheme.apply(
        bodyColor: PRIMARY_TEXT_COLOR, displayColor: PRIMARY_TEXT_COLOR)),
    inputDecorationTheme: InputDecorationTheme(
      isDense: true,
      focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: BUTTON_COLOR),
          borderRadius: BorderRadius.circular(20)),
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
    ),
  );
  final darkTheme = ThemeData.dark().copyWith(
    primaryColor: Colors.grey[900],
    cardColor: Colors.grey[900],
    scaffoldBackgroundColor: Colors.grey[800],
    shadowColor: Colors.grey,
    textTheme: GoogleFonts.nunitoTextTheme(ThemeData.light()
        .textTheme
        .apply(bodyColor: Colors.white, displayColor: Colors.white)),
  );
}
