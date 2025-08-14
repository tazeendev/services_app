import 'package:get/get.dart';
import 'package:services_app/app/app_routes/app_routes.dart';
import 'package:services_app/view/screens/starting_screens/splash_screen/splash_screen.dart';
import 'package:services_app/view/screens/starting_screens/welcome_screen/welcome_screen.dart';

class AppPages{
  static final routes=[
GetPage(name:AppRoutes.splash, page: () =>SplashScreen()),
    GetPage(name: AppRoutes.welcome, page:() =>WelcomeScreen())];
}
