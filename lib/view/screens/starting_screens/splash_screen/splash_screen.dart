import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:services_app/controller/app_controllers/splash_controller/splash_controller.dart';
import 'package:services_app/core/constants/app_constant_text/app_text.dart';
import 'package:services_app/core/responsive_layout/dimensions/dimensions.dart';
import 'package:services_app/core/responsive_layout/media_queries/media_queries.dart';
import 'package:services_app/core/responsive_layout/orientations/orientations.dart';
import 'package:services_app/core/utils/app_colors/app_colors.dart';
import 'package:services_app/core/utils/app_images/app_images.dart';
import 'package:services_app/core/utils/app_icons/app_icons.dart';
class SplashScreen extends StatelessWidget {
  SplashScreen({super.key});
  //final SplashController controller = Get.put(SplashController());
  @override
  Widget build(BuildContext context) {
    final double screenWidth = GetMediaQuery.getWidth(context);
    final double screenHeight = GetMediaQuery.getHeight(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: OrientationBuilder(
          builder: (context, orientation) {
            bool portrait = Orientations.isPortrait(context);
            return Container(
              height:screenHeight*1,
              decoration: BoxDecoration(color: AppColors.greenColor),
              child: portrait
                  ? Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: screenHeight*0.2,),
                  Container(
                    height: screenHeight*0.18,
                    padding: EdgeInsets.symmetric(vertical: screenHeight*0.02,horizontal: screenWidth*0.02),
                    width: screenWidth*0.39,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      color: AppColors.blackColor,
                    ),
                    child: Image.asset(
                      AppImages.splash,
                      width: screenWidth * 0.4,
                      height: screenHeight * 0.2,
                      fit: BoxFit.contain,
                    ),
                  ),
                  SizedBox(height: screenHeight*0.01,),
                  AppText(
                    text: 'Mafi Mushkil',
                    textAlign: TextAlign.center,
                    fontWeight: FontWeight.w900,
                    fontFamily: 'Roboto',
                    customFontSize: Dimensions.getMediumSize(context),
                  ),
                  SizedBox(height: screenHeight*0.3,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        AppIcons.shapePixel,
                        width: screenWidth * 0.07,
                        height: screenHeight * 0.08,
                      ),
                      SizedBox(width: screenWidth * 0.05),
                      AppText(
                        text: 'Pixel io \nTechnologies',
                        textAlign: TextAlign.center,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Glegoo',
                        textColor: AppColors.blackColor,
                        customFontSize: Dimensions.getSmallSize(context),
                      ),
                    ],
                  ),
                ],
              )
              //---------------------landscape-----------------------------
                  : Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: screenHeight * 0.5,
                    width: screenWidth * 0.25,
                    padding: EdgeInsets.all(screenWidth * 0.02),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      color: AppColors.blackColor,
                    ),
                    child: Image.asset(
                      AppImages.splash,
                      fit: BoxFit.contain,
                    ),
                  ),
                  SizedBox(width: screenWidth * 0.05),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppText(
                        text: 'Mafi Mushkil',
                        fontWeight: FontWeight.w900,
                        fontFamily: 'Roboto',
                        customFontSize: Dimensions.getMediumSize(context),
                      ),
                      SizedBox(height: screenHeight * 0.2),
                      Row(
                        children: [
                          Image.asset(
                            AppIcons.shapePixel,
                            width: screenWidth * 0.07,
                            height: screenHeight * 0.08,
                          ),
                          SizedBox(width: screenWidth * 0.02),
                          AppText(
                            text: 'Pixel io \nTechnologies',
                            fontWeight: FontWeight.w700,
                            fontFamily: 'Glegoo',
                            textColor: AppColors.blackColor,
                            customFontSize: Dimensions.getSmallSize(context),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
        
            );
          },
        ),
      ),
    );
  }
}
