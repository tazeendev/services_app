import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../controller/app_controllers/home_controller/comapny_info/company_controller/register_controller.dart';
import '../../../widgets/company_register_form/register_feild.dart';
class RegisterCompanyScreen extends StatelessWidget {
  RegisterCompanyScreen({super.key});
  final RegisterCompanyController controller = Get.put(RegisterCompanyController());
  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Register a Company'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
        child: ListView(
          children: [
            SizedBox(height: screenHeight * 0.02),
            RegisterFieldWidget(
              label: 'Company Name',
              hint: 'Enter company name',
              controller: TextEditingController(),
            ),
            SizedBox(height: screenHeight * 0.02),
            RegisterFieldWidget(
              label: 'Supervisor Name',
              hint: 'Enter supervisor name',
              controller: TextEditingController(),
            ),
            SizedBox(height: screenHeight * 0.02),
            RegisterFieldWidget(
              label: 'Phone Number',
              hint: 'Enter phone number',
              keyboardType: TextInputType.phone,
              controller: TextEditingController(),
            ),
            SizedBox(height: screenHeight * 0.02),
            RegisterFieldWidget(
              label: 'Email Address',
              hint: 'Enter email address',
              keyboardType: TextInputType.emailAddress,
              controller: TextEditingController(),
            ),
            SizedBox(height: screenHeight * 0.02),
            Obx(
                  () => GestureDetector(
                onTap: () {
                  controller.showWorkerTypeBottomSheet();
                },
                child: AbsorbPointer(
                  child: RegisterFieldWidget(
                    label: 'Type of workers',
                    hint: controller.selectWorkerType.value,
                  ),
                ),
              ),
            ),
            SizedBox(height: screenHeight * 0.02),
            RegisterFieldWidget(
              label: 'Address',
              hint: 'Enter your address',
              controller: TextEditingController(),
            ),
            SizedBox(height: screenHeight * 0.04),
            SizedBox(
              height: screenHeight * 0.06,
              width: screenWidth * 0.9,
              child: ElevatedButton(
                onPressed: () {
                  // Submit action
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: const Text(
                  'Submit',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            SizedBox(height: screenHeight * 0.02),
          ],
        ),
      ),
    );
  }
}
