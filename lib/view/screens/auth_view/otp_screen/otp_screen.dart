import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:services_app/controller/app_controllers/auth_controller/auth_controller.dart';
import 'package:services_app/core/constants/app_constant_text/app_text.dart';
import 'package:services_app/core/constants/custom_button/custom_button.dart';
import 'package:services_app/core/constants/textFormFeilds/text_form_feilds.dart';
import 'package:services_app/core/responsive_layout/dimensions/dimensions.dart';
import 'package:services_app/core/responsive_layout/media_queries/media_queries.dart';
import 'package:services_app/core/utils/app_colors/app_colors.dart';
import 'package:services_app/core/utils/app_icons/app_icons.dart';
class OtpScreen extends StatelessWidget {
  OtpScreen({super.key});
  final AuthController controller = Get.put(AuthController());
  TextEditingController phoneController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final double screenHeight = GetMediaQuery.getHeight(context);
    final double screenWidth = GetMediaQuery.getWidth(context);
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: screenHeight * 0.2,
            width: screenWidth * 0.2,
            decoration: BoxDecoration(
              color: AppColors.greenColor,
              shape: BoxShape.circle,
            ),
            child: Image(image: AssetImage(AppIcons.chat)),
          ),
          AppText(text: 'Enter Your Phone Number \n for Verification'),
          AppText(
            text: 'A verification code has been sent \n to you via SMS',
            customFontSize: Dimensions.getSmallSize(context),
            textColor: AppColors.greyColor,
          ),
              TextFormFeildWidget(text: '321456987', controller: phoneController,
                  height: screenHeight*0.2, width:screenWidth*0.9),
          //---------------------button backend logic---------------------
          CustomButton(text: 'verify', onTap: (){
          }, height: screenHeight*0.5, width: screenWidth*0.9)
        ],
      ),
    );
  }
}
