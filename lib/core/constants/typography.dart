import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'colors.dart';

class AppTypography {
  static TextStyle get headingLarge => GoogleFonts.poppins(
        fontSize: 36,
        fontWeight: FontWeight.bold,
        color: AppColors.white,
      );

  static TextStyle get subText => GoogleFonts.poppins(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color: AppColors.gray300,
      );

  static TextStyle get title => GoogleFonts.poppins(
        fontSize: 18,
        fontWeight: FontWeight.w600,
        color: AppColors.black,
      );

  static TextStyle get locationText => GoogleFonts.poppins(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color: AppColors.gray600,
      );

  static TextStyle get priceText => GoogleFonts.poppins(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        color: AppColors.priceBlue,
      );

  static TextStyle get ratingText => GoogleFonts.poppins(
        fontSize: 12,
        fontWeight: FontWeight.w500,
        color: AppColors.starOrange,
      );

  static TextStyle get reviewCount => GoogleFonts.poppins(
        fontSize: 12,
        fontWeight: FontWeight.w400,
        color: AppColors.gray500,
      );

  static TextStyle get buttonText => GoogleFonts.poppins(
        fontSize: 16,
        fontWeight: FontWeight.w500,
        color: AppColors.white,
      );
}
