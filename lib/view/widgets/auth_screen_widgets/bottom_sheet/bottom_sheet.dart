import 'dart:ffi';
import 'package:flutter/material.dart';
import 'package:services_app/core/constants/app_constant_text/app_text.dart';
import 'package:services_app/core/constants/custom_button/custom_button.dart';
import 'package:services_app/core/responsive_layout/media_queries/media_queries.dart';
import 'package:services_app/core/utils/app_colors/app_colors.dart';
import 'package:services_app/core/utils/app_icons/app_icons.dart';
void showVerificationBottomSheet(BuildContext context) {
  final double screenHeight = GetMediaQuery.getHeight(context);
  final double screenWidth = GetMediaQuery.getWidth(context);
//-----------------bottom sheet ------------------
  showModalBottomSheet(
    context: context,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(25)),
    ),
    isScrollControlled: true,
    builder: (context) {
      return Container(
        padding: EdgeInsets.all(20),
        height: screenHeight * 0.5,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: screenHeight * 0.2,
              width: screenHeight * 0.2,
              decoration: BoxDecoration(
                color: AppColors.greenColor,
                shape: BoxShape.circle,
              ),
              child: Image.asset(AppIcons.done),
            ),
            SizedBox(height: 20),
            AppText(text: 'Verification Successful'),
            SizedBox(height: 20),
            CustomButton(
              text: 'Go To Home',
              onTap: () {
                Navigator.pop(context);
                //---------------------- navigation here
              },
              height: 50,
              width: screenWidth * 0.8,
            ),
          ],
        ),
      );
    },
  );
}

