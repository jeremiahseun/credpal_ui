import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../constants/app_colors.dart';

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
            fontSize: fontSize.sp,
            color: color,
            height: height,
            decoration: decoration),
        StylesUsed.productSans => GoogleFonts.ptSans(
            fontWeight: fontWeight,
            fontSize: fontSize.sp,
            color: color,
            height: height,
            decoration: decoration),
        StylesUsed.axiforma => GoogleFonts.alexandria(
            fontWeight: fontWeight,
            fontSize: fontSize.sp,
            color: color,
            height: height,
            decoration: decoration),
      },
    );
  }
}
