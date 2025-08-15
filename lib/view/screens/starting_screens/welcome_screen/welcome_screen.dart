import 'package:flutter/material.dart';
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
          AppText(text: 'Best Helping \nHands for you'),
          AppText(text: 'With Our On-Demand Services App, \n We Give Better Services To You.',
            customFontSize: Dimensions.getSmallSize(context),textAlign: TextAlign.center,textColor: AppColors.greyColor,),
          Container(
            height:screenHeight*0.1,
            width: double.infinity,
            decoration: BoxDecoration(
              image:DecorationImage(image: AssetImage(AppImages.welcomeSplash)),
            ),
          ),
          CustomButton(text: 'Get Started', onTap: (){}, height: screenHeight*0.09, width:double.infinity),
        ],
      ),
    ) ;
  }
}
