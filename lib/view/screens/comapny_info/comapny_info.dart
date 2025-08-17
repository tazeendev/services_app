import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:services_app/controller/app_controllers/home_controller/comapny_info/company_controller.dart';
import 'package:services_app/core/constants/app_constant_text/app_text.dart';
import 'package:services_app/core/constants/custom_button/custom_button.dart';
import 'package:services_app/core/responsive_layout/dimensions/dimensions.dart';
import 'package:services_app/core/responsive_layout/media_queries/media_queries.dart';
import 'package:services_app/core/utils/app_colors/app_colors.dart';
import 'package:services_app/core/utils/app_images/app_images.dart';

class CompanyInfooo extends StatelessWidget {
  CompanyInfooo({super.key});
  final CompanyController controller = Get.put(CompanyController());
  @override
  Widget build(BuildContext context) {
    final double screenHeight = GetMediaQuery.getHeight(context);
    final double screenWidth = GetMediaQuery.getWidth(context);
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            AppImages.companyImage,
            height: screenHeight,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          Positioned(
            top: screenHeight * 0.05,
            right: screenWidth * 0.03,
            child: CircleAvatar(
              backgroundColor: AppColors.whiteColor,
              child: IconButton(
                icon: Icon(Icons.clear, color: AppColors.blackColor, size: screenHeight * 0.035),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: screenWidth * 0.05, vertical: screenHeight * 0.12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppText(
                  text: 'Register a company with us?',
                  customFontSize: Dimensions.getLargeSize(context),
                  fontWeight: FontWeight.bold,
                ),
                SizedBox(height: screenHeight * 0.01),
                AppText(
                  text: 'Register and Grow Your Business!',
                  customFontSize: Dimensions.getSmallSize(context),
                  textColor: AppColors.greyColor,
                ),
                SizedBox(height: screenHeight * 0.015),
                Expanded(
                  child: ListView.builder(
                    itemCount: controller.details.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        leading: Image.asset(controller.details[index]['image']!),
                        title: AppText(
                            text: controller.details[index]['title']!,
                            customFontSize: Dimensions.getSmallSize(context)),
                        subtitle: AppText(
                            text: controller.details[index]["des"]!,
                            customFontSize: Dimensions.getSmallSize(context)),
                        onTap: () {},
                      );
                    },
                  ),
                ),
                Center(
                  child: CustomButton(
                    text: 'Register Now',
                    onTap: () {},
                    height: screenHeight * 0.06,
                    width: screenWidth * 0.7,
                  ),
                ),
                SizedBox(height: screenHeight * 0.015),
                Center(
                  child: AppText(
                    text: 'Need Help?',
                    customFontSize: Dimensions.getSmallSize(context),
                    textColor: AppColors.greyColor,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
