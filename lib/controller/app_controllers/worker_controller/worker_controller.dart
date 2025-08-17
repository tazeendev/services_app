import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:services_app/core/utils/app_icons/app_icons.dart';
class WorkerController extends GetxController
{
  final List<Map<String,String>> workerDetails=[
    { "title":" Increased Job Opportunities","des":" Expand your client base and enjoy flexible working hours.","image":AppIcons.amountPaid},
    { "title":"Enhanced Professional Reputation","des":"Build credibility through user reviews and showcase your work.","image":AppIcons.salary},
    { "title":"Convenient Business Management","des":"Enjoy a hassle-free payment process, with secure and direct earnings deposited into youraccount.","image":AppIcons.map},
  ];
}