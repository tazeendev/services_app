import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:services_app/controller/app_controllers/home_controller/menu_controller.dart';
import 'package:services_app/core/constants/app_constant_text/app_text.dart';
import 'package:services_app/core/responsive_layout/media_queries/media_queries.dart';
import 'package:services_app/core/utils/app_colors/app_colors.dart';
class MenuScreen extends StatelessWidget {
  MenuScreen({super.key});
  final MenuItemsController controller = Get.put(MenuItemsController());
  @override
  Widget build(BuildContext context) {
    final double screenHeight = GetMediaQuery.getHeight(context);
    final double screenWidth = GetMediaQuery.getWidth(context);
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(screenHeight * 0.1),
        child: AppBar(
          title: AppText(text: 'Mafi Mushkil'),
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
                itemCount: controller.menuItems.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Image.asset(controller.menuItems[index]['image']!),
                    title: AppText(text: controller.menuItems[index]['title']!),
                    trailing: Icon(Icons.arrow_forward_ios, color: AppColors.greyColor),
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
