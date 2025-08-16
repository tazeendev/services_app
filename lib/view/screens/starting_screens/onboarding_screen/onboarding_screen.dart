import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:services_app/controller/app_controllers/onboarding_controller/onboarding_controller.dart';
import 'package:services_app/core/constants/app_constant_text/app_text.dart';
import 'package:services_app/core/constants/custom_button/custom_button.dart';
import 'package:services_app/core/responsive_layout/dimensions/dimensions.dart';
import 'package:services_app/core/responsive_layout/media_queries/media_queries.dart';
import 'package:services_app/core/utils/app_colors/app_colors.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
class OnboardingScreen extends StatelessWidget {
  OnboardingScreen({super.key});
  final OnboardingController controller = Get.put(OnboardingController());
  @override
  Widget build(BuildContext context) {
    final double screenHeight = GetMediaQuery.getHeight(context);
    final double screenWidth = GetMediaQuery.getWidth(context);
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                controller: controller.pageController,
                onPageChanged: controller.onPageChanged,
                itemCount: controller.pages.length,
                itemBuilder: (context, index) {
                  final data = controller.pages[index];
                  return SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        children: [
                          Container(
                            height: screenHeight * 0.56,
                            child: Image.asset(
                              data['image']!,
                              fit: BoxFit.contain,
                            ),
                          ),
                          AppText(
                            text: data['title']!,
                            customFontSize: Dimensions.getLargeSize(context),
                            fontWeight: FontWeight.bold,
                            textAlign: TextAlign.center,
                          ),

                          SizedBox(height: screenHeight * 0.01),
                          AppText(
                            text: data['description']!,
                            textColor: AppColors.greyColor,
                            customFontSize: Dimensions.getSmallSize(context)*2,
                            textAlign: TextAlign.center,
                          ),

                          SizedBox(height: screenHeight * 0.05),
                          SmoothPageIndicator(
                              controller: controller.pageController,
                              count: controller.pages.length,
                              effect: ExpandingDotsEffect(
                                activeDotColor: AppColors.blackColor,
                                dotColor: AppColors.lightGreyColor,
                                dotHeight: 10,
                                dotWidth: 10,
                                spacing: 5,
                                expansionFactor:1.1,
                                radius: 5,
                              ),
                            ),
                          SizedBox(height: screenHeight * 0.06),
                          Obx(
                                () => Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                TextButton(
                                  onPressed: controller.skipToLast,
                                  child: Text(
                                    'Skip',
                                    style: TextStyle(
                                      color: AppColors.blackColor,
                                      fontWeight: FontWeight.w500,
                                      fontSize: Dimensions.getSmallSize(context)*3,
                                    ),
                                  ),
                                ),
                                CustomButton(
                                  text: controller.currentPage.value ==
                                      controller.pages.length - 1
                                      ? "Finish"
                                      : "Next",
                                  onTap: controller.nextPage,
                                  textColor: AppColors.greenColor,
                                  height: screenHeight * 0.07,
                                  width: screenWidth * 0.35,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
