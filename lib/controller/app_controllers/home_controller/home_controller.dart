import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:services_app/core/utils/app_icons/app_icons.dart';
import 'package:services_app/core/utils/app_images/app_images.dart';

import '../../../core/utils/app_images/app_images.dart';

class HomeController extends GetxController {
  final List<Map<String, String>> services = [
    {'name': '', 'image': AppImages.cleaning},
    {'name': '', 'image': AppImages.repairing},
    {'name': '', 'image': AppImages.electricion},
    {'name': '', 'image': AppImages.carpenter},
    {'name': '', 'image': AppImages.repairing},
    {'name': '', 'image': AppImages.electricion},
    {'name': '', 'image': AppImages.carpenter},
    {'name': '', 'image': AppImages.repairing},
    {'name': '', 'image': AppImages.more},
  ];
}
