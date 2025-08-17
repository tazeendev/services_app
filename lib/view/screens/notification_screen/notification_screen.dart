import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:services_app/controller/app_controllers/home_controller/menu_controller.dart';
import 'package:services_app/controller/app_controllers/notification_controller/notification_controller.dart';
import 'package:services_app/core/constants/app_constant_text/app_text.dart';
import 'package:services_app/core/responsive_layout/dimensions/dimensions.dart';
import 'package:services_app/core/responsive_layout/media_queries/media_queries.dart';
import 'package:services_app/core/utils/app_colors/app_colors.dart';

class NotificationScreen extends StatelessWidget {
  NotificationScreen({super.key});
  final NotificationController controller = Get.put(NotificationController());
  @override
  Widget build(BuildContext context) {
    final double screenHeight = GetMediaQuery.getHeight(context);
    final double screenWidth = GetMediaQuery.getWidth(context);
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(screenHeight * 0.1),
        child: AppBar(
          title: AppText(text: 'Notifications'),
          backgroundColor: AppColors.greenColor,
          actions: [
            IconButton(
              icon: Icon(Icons.clear, color: AppColors.blackColor),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.02),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: controller.Items.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Image.asset(controller.Items[index]['image']!),
                    title: AppText(text: controller.Items[index]['title']!),
                    trailing: Row(
                      children: [
                        Icon(
                          Icons.access_time_rounded,
                          color: AppColors.greyColor,
                        ),
                        SizedBox(height: screenHeight*0.02,),
                        AppText(text: '2 hrs ago',
                          customFontSize: Dimensions.getSmallSize(context),),
                      ],
                    ),
                    onTap: () {},
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
