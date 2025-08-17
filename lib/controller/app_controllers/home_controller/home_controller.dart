import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:services_app/core/utils/app_icons/app_icons.dart';
import 'package:services_app/core/utils/app_images/app_images.dart';

import '../../../core/utils/app_images/app_images.dart';

class HomeController extends GetxController {
  final List<Map<String, String>> services = [
    {'name': 'cleaning', 'image': AppImages.cleaning},
    {'name': 'Repairing', 'image': AppImages.repairing},
    {'name': 'Electrician', 'image': AppImages.electricion},
    {'name': 'Carpenter', 'image': AppImages.carpenter},
    {'name': 'Reparing', 'image': AppImages.repairing},
    {'name': 'Electricion', 'image': AppImages.electricion},
    {'name': 'Carpenter', 'image': AppImages.carpenter},
    {'name': 'Reparing', 'image': AppImages.repairing},
    {'name': 'More', 'image': AppImages.more},
  ];
}
