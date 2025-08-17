import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:services_app/core/utils/app_icons/app_icons.dart';
class CompanyController extends GetxController
{
  final List<Map<String,String>> details=[
    { "title":"Quality Client Acquisition","des":"Receive job requests from customers who value "
        "professionalism and are willing to pay fair rates.","image":AppIcons.amountPaid},
    { "title":"Enhanced Earning Potential","des":"Access higher-paying"
        " projects and long-term contracts for increased income potential.","image":AppIcons.salary},
    { "title":"Building Trust and Reputation","des":"Enhance your professional reputation by consistently"
        " delivering high-quality services, earning trust and repeat business.","image":AppIcons.map},
  ];
}