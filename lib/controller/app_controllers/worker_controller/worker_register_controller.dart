import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:services_app/core/constants/app_constant_text/app_text.dart';
import 'package:services_app/core/constants/custom_button/custom_button.dart';
import 'package:services_app/core/responsive_layout/dimensions/dimensions.dart';
import 'package:services_app/core/responsive_layout/media_queries/media_queries.dart';
import 'package:services_app/core/utils/app_colors/app_colors.dart';
import 'package:services_app/core/utils/app_icons/app_icons.dart';
import 'package:services_app/core/utils/app_images/app_images.dart';
import '../../../../../app/app_linker/app_links.dart';
class RegisterCompanyController extends GetxController {
  var selectWorkerType = 'Select Type'.obs;
  var selectCountry="Select Country".obs;
  final List<Map<String, String>> workers = [
    {"title": "Plumber", "image": AppImages.repairing},
    {"title": "Cleaning", "image": AppImages.cleaning},
    {"title": "Carpenter", "image": AppImages.carpenter},
    {"title": "Electrician", "image": AppImages.electricion},
  ];
  final List<Map<String, String>> country = [
    {"title": "Pakistan",},
    {"title": "UAE", },
    {"title": "Gulf",},
    {"title": "India",},
  ];
  void setWorkerType(String type) {
    selectWorkerType.value = type;
  }
  // ---------------- BottomSheet for workers --------------------
  void showWorkerTypeBottomSheet() {
    Get.bottomSheet(
      Container(
        padding: EdgeInsets.all(16),
        child: Obx(
              () => Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(height: 20),
              AppText(text: 'Select work type'),
              SizedBox(height: 10),
              ...workers.map((worker) {
                bool isSelected = selectWorkerType.value == worker['title'];
                return Column(
                  children: [
                    ListTile(
                      leading: Image.asset(
                        worker['image']!,
                        width: 40,
                        height: 40,
                      ),
                      title: Text(worker['title']!),
                      trailing: Icon(
                        isSelected
                            ? Icons.check_circle
                            : Icons.check_circle_outline,
                        color: isSelected
                            ? AppColors.blackColor
                            : AppColors.greyColor,
                      ),
                      tileColor: isSelected
                          ? AppColors.blackColor.withOpacity(0.2)
                          : null,
                      onTap: () {
                        setWorkerType(worker['title']!);
                      },
                    ),
                    Divider(),
                  ],
                );
              }).toList(),
              CustomButton(text: 'Ok', onTap: (){}, height:30, width: double.infinity)
            ],
          ),
        ),
      ),
      backgroundColor: AppColors.whiteColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
    );
    //---------------country bottomSheet-------------------
    void showCountryBottomSheet() {
      Get.bottomSheet(
        Container(
          padding: EdgeInsets.all(16),
          child: Obx(
                () => Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(height: 20),
                AppText(text: 'Select Experience Country'),
                SizedBox(height: 10),
                ...workers.map((worker) {
                  bool isSelected = selectWorkerType.value == worker['title'];
                  return Column(
                    children: [
                      ListTile(
                        leading: Image.asset(
                          worker['image']!,
                          width: 40,
                          height: 40,
                        ),
                        title: Text(worker['title']!),
                        trailing: Icon(
                          isSelected
                              ? Icons.check_circle
                              : Icons.check_circle_outline,
                          color: isSelected
                              ? AppColors.blackColor
                              : AppColors.greyColor,
                        ),
                        tileColor: isSelected
                            ? AppColors.blackColor.withOpacity(0.2)
                            : null,
                        onTap: () {
                          setWorkerType(worker['title']!);
                        },
                      ),
                      Divider(),
                    ],
                  );
                }).toList(),
                CustomButton(text: 'Ok', onTap: (){}, height:30, width: double.infinity)
              ],
            ),
          ),
        ),
        backgroundColor: AppColors.whiteColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
        ),
      );
  }
}
