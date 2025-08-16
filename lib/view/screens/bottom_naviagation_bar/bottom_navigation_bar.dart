import 'package:flutter/material.dart';
import 'package:services_app/core/utils/app_colors/app_colors.dart';
import 'package:services_app/core/utils/app_icons/app_icons.dart';
import 'package:services_app/view/screens/home_screen_view/home_screen.dart';
import 'package:services_app/view/screens/notification_screen/notification_screen.dart';
import 'package:services_app/view/screens/orders_screen/orders_screen.dart';
import 'package:services_app/view/screens/promotion_screen/promotion_screen.dart';
class NavigationScreen extends StatefulWidget {
  const NavigationScreen({super.key});
  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}
class _NavigationScreenState extends State<NavigationScreen> {
  int currentIndex = 0;
  final List<Widget> screens = [
    HomeScreen(),
    OrdersScreen(),
    PromotionScreen(),
    NotificationScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        selectedItemColor: AppColors.blackColor,
        unselectedItemColor: AppColors.greyColor,
        backgroundColor: AppColors.whiteColor,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage(AppIcons.home)), // no color here
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage(AppIcons.orders)),
            label: 'Orders',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage(AppIcons.promotion)),
            label: 'Promotions',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage(AppIcons.notification)),
            label: 'Notifications',
          ),
        ],
      ),
    );
  }
}
