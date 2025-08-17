import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:services_app/controller/app_controllers/home_controller/home_controller.dart';
import 'package:services_app/core/constants/app_constant_text/app_text.dart';
import 'package:services_app/core/responsive_layout/media_queries/media_queries.dart';
import '../../../core/utils/app_colors/app_colors.dart';
class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  final HomeController controller = Get.put(HomeController());
  final TextEditingController searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final double screenHeight = GetMediaQuery.getHeight(context);
    final double screenWidth = GetMediaQuery.getWidth(context);
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(screenHeight * 0.25),
        child: AppBar(
          backgroundColor: AppColors.greenColor,
          elevation: 0,
          title: Row(
            children: [
              Container(
                height: screenHeight * 0.08,
                width: screenWidth * 0.15,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.black,
                ),
                child: Image.asset(
                  'assets/images/splash.png',
                  fit: BoxFit.contain,
                ),
              ),
              SizedBox(width: 10),
              Text(
                'Mafi \nMushkil',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ],
          ),
          actions: [Icon(Icons.menu, color: Colors.black)],
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(screenHeight * 0.08),
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: screenWidth * 0.05,
                vertical: screenHeight * 0.02,
              ),
              child: Container(
                height: screenHeight * 0.06,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: TextField(
                  controller: searchController,
                  decoration: InputDecoration(
                    hintText: 'I want to hire a...',
                    border: InputBorder.none,
                    prefixIcon: Icon(Icons.search, color: Colors.grey),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppText(text: 'Services'),
            SizedBox(height: screenHeight * 0.01),
            Expanded(
              child: GridView.builder(
                itemCount: controller.services.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: screenHeight * 0.01,
                  crossAxisSpacing: screenHeight * 0.01,
                  childAspectRatio: 1 / 1.2, // Adjust as needed
                ),
                itemBuilder: (context, index) {
                  return Container(
                    decoration: BoxDecoration(
                      color: AppColors.whiteColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          controller.services[index]["image"]!,
                          height: screenHeight * 0.08,
                        ),
                        SizedBox(height: 5),
                        AppText(text: controller.services[index]["name"]!),
                      ],
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
