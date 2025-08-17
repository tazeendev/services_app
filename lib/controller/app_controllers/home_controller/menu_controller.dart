import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:services_app/core/utils/app_icons/app_icons.dart';
class MenuItemsController extends GetxController
{
  final List<Map<String,String>> menuItems=[
    { "title":"My Profile","image":AppIcons.profile},
    { "title":"Contact us","image":AppIcons.contact},
    { "title":"Become a worker","image":AppIcons.constructionWork},
    { "title":"Register a company","image":AppIcons.bricks},
    { "title":" Share","image":AppIcons.share},
    { "title":"Rate","image":AppIcons.star},
    { "title":"Logout","image":AppIcons.logOut},
  ];
}