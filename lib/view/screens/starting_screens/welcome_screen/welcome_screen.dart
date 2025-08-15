import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:services_app/core/constants/app_constant_text/app_text.dart';
import 'package:services_app/core/constants/custom_button/custom_button.dart';
import 'package:services_app/core/responsive_layout/dimensions/dimensions.dart';
import 'package:services_app/core/responsive_layout/media_queries/media_queries.dart';
import 'package:services_app/core/responsive_layout/orientations/orientations.dart';
import 'package:services_app/core/utils/app_images/app_images.dart';

import '../../../../core/utils/app_colors/app_colors.dart';
class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    double screenHeight=GetMediaQuery.getHeight(context);
    double screenWidth=GetMediaQuery.getWidth(context);
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: screenHeight*0.1,),
          AppText(text: 'Best Helping \nHands for you',customFontSize: Dimensions.getLargeSize(context),fontWeight: FontWeight.bold,),
          SizedBox(height: screenHeight*0.01,),
          AppText(text: 'With Our On-Demand Services App, \n We Give Better Services To You.',fontWeight: FontWeight.w500,
            customFontSize: Dimensions.getSmallSize(context)*1.9,textAlign: TextAlign.center,textColor: AppColors.greyColor,),
          SizedBox(height: screenHeight*0.05),
          Container(
            height:screenHeight*0.4,
            width: double.infinity,
            decoration: BoxDecoration(
              image:DecorationImage(image: AssetImage(AppImages.welcomeSplash)),
            ),
          ),
          Spacer(),
          CustomButton(text: 'Get Started', onTap: (){
            Get.toNamed('/onboarding');
          }, height: screenHeight*0.075, width:screenWidth*0.9,textColor: AppColors.greenColor,),
       SizedBox(height: screenHeight*0.08,),
        ],
      ),
    ) ;
  }
}
