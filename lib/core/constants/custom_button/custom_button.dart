import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:services_app/core/constants/app_constant_text/app_text.dart';
import 'package:services_app/core/responsive_layout/dimensions/dimensions.dart';
import '../../utils/app_colors/app_colors.dart';
class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  final Color textColor;
  final Color backgroundColor;
  final double height;
  final double width;
  const CustomButton({
    super.key,
    required this.text,
    required this.onTap,
    this.textColor = Colors.white,
    this.backgroundColor = AppColors.blackColor,
    required this.height,
    required this.width,
  });
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: Duration(milliseconds: 200),
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
              color: AppColors.greyColor.withOpacity(0.25),
              spreadRadius: 1,
              blurRadius: 10,
              offset: Offset(0, 4),
            ),
          ],
        ),
        child: Center(
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: GoogleFonts.robotoFlex(
              textStyle: TextStyle(
                color: textColor,
                fontWeight: FontWeight.w600,
                fontSize: Dimensions.getSmallSize(context),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
