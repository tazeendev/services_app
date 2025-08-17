import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:services_app/core/utils/app_icons/app_icons.dart';
class NotificationController extends GetxController
{
  final List<Map<String,String>> Items=[
    { "title":"Order Accepted","image":AppIcons.orders},
    { "title":"Confirm Order","image":AppIcons.confirm},
    { "title":"Order Assigned","image":AppIcons.orders},
    { "title":"Order Completed","image":AppIcons.circleCheckMark},
    { "title":"Order Cancelled","image":AppIcons.sadEmoji},
    { "title":"Announcement","image":AppIcons.announcement},
  ];
}