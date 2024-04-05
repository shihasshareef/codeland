import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'colors.dart';

TextTheme appTextTheme() {
  return TextTheme(
    displayLarge: GoogleFonts.poppins(
      fontSize: 64,
      fontStyle: FontStyle.normal,
      color: AppColors.black,
      fontWeight: FontWeight.w900,
    ),
    displayMedium: GoogleFonts.poppins(
      fontSize: 54,
      fontStyle: FontStyle.normal,
      color: AppColors.black,
      fontWeight: FontWeight.w900,
    ),
    displaySmall: GoogleFonts.poppins(
      fontSize: 16,
      fontStyle: FontStyle.normal,
      color: AppColors.black,
      fontWeight: FontWeight.w700,
    ),
    headlineLarge: GoogleFonts.poppins(
      fontSize: 32,
      fontStyle: FontStyle.normal,
      color: AppColors.black,
      fontWeight: FontWeight.w700,
    ),
    headlineMedium: GoogleFonts.poppins(
      fontSize: 28,
      fontStyle: FontStyle.normal,
      color: AppColors.black,
      fontWeight: FontWeight.w600,
    ),
    headlineSmall: GoogleFonts.poppins(
      fontSize: 24,
      fontStyle: FontStyle.normal,
      color: AppColors.black,
      fontWeight: FontWeight.w600,
    ),
    labelLarge: GoogleFonts.poppins(
      fontSize: 24,
      fontStyle: FontStyle.normal,
      color: AppColors.black,
      fontWeight: FontWeight.w600,
    ),
    labelMedium: GoogleFonts.poppins(
      fontSize: 16,
      fontStyle: FontStyle.normal,
      color: AppColors.black,
      fontWeight: FontWeight.w500,
    ),
    labelSmall: GoogleFonts.poppins(
      fontSize: 14,
      fontStyle: FontStyle.normal,
      color: AppColors.black,
      fontWeight: FontWeight.w400,
    ),
    titleLarge: GoogleFonts.poppins(
      fontSize: 22,
      fontStyle: FontStyle.normal,
      color: AppColors.black,
      fontWeight: FontWeight.w700,
    ),
    titleMedium: GoogleFonts.poppins(
      fontSize: 16,
      fontStyle: FontStyle.normal,
      color: AppColors.black,
      fontWeight: FontWeight.w600,
    ),
    titleSmall: GoogleFonts.poppins(
      fontSize: 14,
      fontStyle: FontStyle.normal,
      color: AppColors.black,
      fontWeight: FontWeight.w600,
    ),
    bodyLarge: GoogleFonts.poppins(
      fontSize: 16,
      fontStyle: FontStyle.normal,
      color: AppColors.black,
      fontWeight: FontWeight.w400,
    ),
    bodyMedium: GoogleFonts.poppins(
      fontSize: 14,
      fontStyle: FontStyle.normal,
      color: AppColors.black,
      fontWeight: FontWeight.w400,
    ),
    bodySmall: GoogleFonts.poppins(
      fontSize: 12,
      fontStyle: FontStyle.normal,
      color: AppColors.black,
      fontWeight: FontWeight.w400,
    ),
  );
}
