import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants/app_colors.dart';

enum StylesUsed { avenir, productSans, axiforma }

class CDText extends StatelessWidget {
  final String text;
  final FontWeight fontWeight;
  final double fontSize;
  final Color color;
  final double? height;
  final TextDecoration? decoration;
  final StylesUsed stylesUsed;
  final TextAlign? textAlign;

  //* Normal Style
  const CDText(this.text,
      {super.key,
      this.fontWeight = FontWeight.normal,
      required this.fontSize,
      this.color = AppColors.black,
      this.height,
      this.textAlign,
      this.decoration})
      : stylesUsed = StylesUsed.avenir;

  //* Avenir Style
  const CDText.avenir(this.text,
      {super.key,
      this.fontWeight = FontWeight.normal,
      required this.fontSize,
      this.color = AppColors.black,
      this.height,
      this.textAlign,
      this.decoration})
      : stylesUsed = StylesUsed.avenir;

  //* Product Sans Style
  const CDText.productSana(this.text,
      {super.key,
      this.fontWeight = FontWeight.normal,
      required this.fontSize,
      this.color = AppColors.black,
      this.height,
      this.textAlign,
      this.decoration})
      : stylesUsed = StylesUsed.productSans;

  //* Axiforma Style
  const CDText.axiforma(this.text,
      {super.key,
      this.fontWeight = FontWeight.normal,
      required this.fontSize,
      this.color = AppColors.black,
      this.height,
      this.textAlign,
      this.decoration})
      : stylesUsed = StylesUsed.axiforma;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
      style: switch (stylesUsed) {
        StylesUsed.avenir => GoogleFonts.averiaSansLibre(
            fontWeight: fontWeight,
            fontSize: fontSize,
            color: color,
            height: height,
            decoration: decoration),
        StylesUsed.productSans => GoogleFonts.ptSans(
            fontWeight: fontWeight,
            fontSize: fontSize,
            color: color,
            height: height,
            decoration: decoration),
        StylesUsed.axiforma => GoogleFonts.alexandria(
            fontWeight: fontWeight,
            fontSize: fontSize,
            color: color,
            height: height,
            decoration: decoration),
      },
    );
  }
}

// class AppTextStyles {

//   // Font families
//   static const String _avenir = 'Avenir';
//   static const String _productSans = 'Product Sans';
//   static const String _axiforma = 'Axiforma';

//   // Helper method to create TextStyle with Avenir font
//   static TextStyle _avenirStyle({
//     double size = 14,
//     FontWeight weight = FontWeight.normal,
//     Color color = AppColors.textPrimary,
//     double? height,
//     TextDecoration? decoration,
//   }) {
//     return GoogleFonts.averiaSansLibre(
//       fontSize: size,
//       fontWeight: weight,
//       color: color,
//       height: height,
//       decoration: decoration,
//     );
//   }

//   // Helper method to create TextStyle with Product Sans font
//   static TextStyle _productSansStyle({
//     double size = 14,
//     FontWeight weight = FontWeight.normal,
//     Color color = AppColors.textPrimary,
//     double? height,
//     TextDecoration? decoration,
//   }) {
//     return GoogleFonts.ptSans(
//       fontSize: size,
//       fontWeight: weight,
//       color: color,
//       height: height,
//       decoration: decoration,
//     );
//   }

//   // Helper method to create TextStyle with Axiforma font
//   static TextStyle _axiformaStyle({
//     double size = 14,
//     FontWeight weight = FontWeight.normal,
//     Color color = AppColors.textPrimary,
//     double? height,
//     TextDecoration? decoration,
//   }) {
//     return GoogleFonts.montserrat(
//       // Using Montserrat as a fallback for Axiforma
//       fontSize: size,
//       fontWeight: weight,
//       color: color,
//       height: height,
//       decoration: decoration,
//     );
//   }

//   // Heading styles
//   static TextStyle headingLarge = _productSansStyle(
//     size: 32,
//     weight: FontWeight.bold,
//   );

//   static TextStyle headingMedium = _productSansStyle(
//     size: 24,
//     weight: FontWeight.bold,
//   );

//   static TextStyle headingSmall = _productSansStyle(
//     size: 20,
//     weight: FontWeight.bold,
//   );

//   // Body text styles
//   static TextStyle bodyLarge = _avenirStyle(
//     size: 16,
//     weight: FontWeight.normal,
//   );

//   static TextStyle bodyMedium = _avenirStyle(
//     size: 14,
//     weight: FontWeight.normal,
//   );

//   static TextStyle bodySmall = _avenirStyle(
//     size: 12,
//     weight: FontWeight.normal,
//   );

//   // Button text styles
//   static TextStyle buttonLarge = _axiformaStyle(
//     size: 16,
//     weight: FontWeight.w600,
//     color: AppColors.textLight,
//   );

//   static TextStyle buttonMedium = _axiformaStyle(
//     size: 14,
//     weight: FontWeight.w600,
//     color: AppColors.textLight,
//   );

//   // Label styles
//   static TextStyle labelLarge = _axiformaStyle(
//     size: 14,
//     weight: FontWeight.w500,
//   );

//   static TextStyle labelMedium = _axiformaStyle(
//     size: 12,
//     weight: FontWeight.w500,
//   );

//   static TextStyle labelSmall = _axiformaStyle(
//     size: 10,
//     weight: FontWeight.w500,
//   );

//   // Price styles
//   static TextStyle priceRegular = _productSansStyle(
//     size: 16,
//     weight: FontWeight.w600,
//     color: AppColors.primary,
//   );

//   static TextStyle priceStrikethrough = _productSansStyle(
//     size: 14,
//     weight: FontWeight.normal,
//     color: AppColors.textSecondary,
//     decoration: TextDecoration.lineThrough,
//   );

//   // Special styles
//   static TextStyle discountBadge = _axiformaStyle(
//     size: 12,
//     weight: FontWeight.bold,
//     color: AppColors.textLight,
//   );
// }
