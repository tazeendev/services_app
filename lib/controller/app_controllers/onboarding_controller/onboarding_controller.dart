import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:services_app/core/utils/app_images/app_images.dart';
class OnboardingController extends GetxController{
  final pageController=PageController();
  var currentPage=0.obs;
  //------------------map for onbaording data -----------------------
  final List<Map<String,String>> pages=[
  {
    'title':'Choose a service',
  'description':'Find the right service for your needs \n easily, with a variety of '
        'options \n available at your fingertips.',
    'image':AppImages.onboarding1
  },
    {
      'title':'Get a quote',
      'description':"Request price estimates from \nprofessionals to help you make informed \n decisions with ease.",
      'image':AppImages.onboarding2,
    },
    {
      'title':'Work done',
      'description':'Sit back and relax while skilled experts \n efficiently take care of your tasks,\n ensuring a job well done.',
      'image':AppImages.onboarding3
    }
  ];
  void onPageChanged(int index){
    currentPage.value=index;
  }
  void nextPage(){
    if(currentPage.value<pages.length-1){
      pageController.nextPage(duration: Duration(milliseconds: 400), curve: Curves.easeInOut);
    }
    else{
      Get.offNamed('/verification');
    }
  }
  void skipToLast(){
    pageController.jumpToPage(pages.length-1);
  }
}