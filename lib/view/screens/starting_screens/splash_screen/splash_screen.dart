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
      body: OrientationBuilder(
        builder: (context, orientation) {
          bool portrait = Orientations.isPortrait(context);
          return Container(
            //height: screenHeight * 0.9,
          //  width: screenWidth * 0.9,
            decoration: BoxDecoration(color: AppColors.greenColor),
            child: Center(
              //-----------------------portrait----------------------
              child: portrait
                  ? Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: screenHeight*0.1,
                    width: screenWidth*0.2,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      color: AppColors.blackColor,
                    ),
                    child: Image.asset(
                      AppImages.splash,
                      width: screenWidth * 0.5,
                      height: screenHeight * 0.3,
                      fit: BoxFit.contain,
                    ),
                  ),
                  AppText(
                    text: 'Mafi Mushkil',
                    textAlign: TextAlign.center,
                    fontWeight: FontWeight.w900,
                    fontFamily: 'Roboto',
                    customFontSize: Dimensions.getLargeSize(context),
                  ),
                  Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        AppIcons.shapePixel,
                        width: screenWidth * 0.08,
                        height: screenHeight * 0.05,
                      ),
                      SizedBox(width: screenWidth * 0.02),
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
                  Image.asset(
                    AppImages.splash,
                    width: screenWidth * 0.3,
                    height: screenHeight * 0.5,
                    fit: BoxFit.contain,
                  ),
                  SizedBox(width: screenWidth * 0.03),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      AppText(
                        text: 'Mafi Mushkil',
                        textAlign: TextAlign.center,
                        fontWeight: FontWeight.w900,
                        fontFamily: 'Roboto',
                        customFontSize: Dimensions.getLargeSize(context),
                      ),
                      SizedBox(height: screenHeight * 0.02),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            AppIcons.shapePixel,
                            width: screenWidth * 0.06,
                            height: screenHeight * 0.04,
                          ),
                          SizedBox(width: screenWidth * 0.02),
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
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
