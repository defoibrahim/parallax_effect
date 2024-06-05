import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_colors.dart';

abstract class AppTheme {
  static ThemeData dark = ThemeData(
    textTheme: TextTheme(
      bodyLarge: GoogleFonts.gruppo(
        fontSize: 16,
        fontWeight: FontWeight.w800,
        color: AppColorScheme.textColor,
      ),
      bodyMedium: GoogleFonts.gruppo(
        fontSize: 14,
        fontWeight: FontWeight.w800,
        color: AppColorScheme.textColor,
      ),
      bodySmall: GoogleFonts.montserrat(
        fontSize: 10,
        fontWeight: FontWeight.w400,
        color: AppColorScheme.textColor,
      ),
      displayLarge: GoogleFonts.buda(
        fontSize: 70,
        color: AppColorScheme.textColor,
      ),
      displayMedium: GoogleFonts.buda(
        fontSize: 50,
        color: AppColorScheme.textColor,
      ),
      displaySmall: GoogleFonts.buda(
        fontSize: 40,
        color: AppColorScheme.textColor,
      ),
    ),
    appBarTheme: const AppBarTheme(
      elevation: 0,
      backgroundColor: Colors.transparent,
    ),
    iconTheme: const IconThemeData(color: AppColorScheme.textColor),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: Colors.white,
        shape: const StadiumBorder(),
        textStyle: GoogleFonts.montserrat(
          fontSize: 12,
          fontWeight: FontWeight.w800,
        ),
      ),
    ),
    sliderTheme: const SliderThemeData(
      activeTrackColor: AppColorScheme.selectedColor,
      inactiveTrackColor: AppColorScheme.trackColor,
      thumbColor: AppColorScheme.selectedColor,
      trackHeight: 2,
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: Colors.transparent,
      elevation: 0,
      selectedIconTheme: const IconThemeData(size: 40),
      unselectedIconTheme: const IconThemeData(size: 40),
      selectedItemColor: AppColorScheme.hintColor,
      unselectedItemColor: AppColorScheme.hintColor,
      selectedLabelStyle: GoogleFonts.montserrat(
        fontSize: 12,
        fontWeight: FontWeight.w700,
      ),
      unselectedLabelStyle: GoogleFonts.montserrat(
        fontSize: 12,
        fontWeight: FontWeight.w700,
      ),
    ),
    scaffoldBackgroundColor: AppColorScheme.backgroundColor,
  );
}
