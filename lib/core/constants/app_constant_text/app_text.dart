import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utils/app_colors/app_colors.dart';
class AppText extends StatelessWidget {
  final String text;
  final Color textColor;
  final FontWeight fontWeight;
  final TextAlign textAlign;
  final double? customFontSize;
  final String fontFamily;
  AppText({super.key, required this.text, this.textColor=AppColors.blackColor,
    this.fontWeight=FontWeight.bold,
    this.textAlign=TextAlign.center, this.customFontSize, this.fontFamily='Roboto Flex',});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.getFont(fontFamily,fontSize: customFontSize,fontWeight: fontWeight,color: textColor, ),
      textAlign: textAlign,
    );
  }
}
