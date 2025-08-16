import 'dart:nativewrappers/_internal/vm/lib/ffi_allocation_patch.dart';

import 'package:flutter/material.dart';

import '../../utils/app_colors/app_colors.dart';
class TextFormFeildWidget extends StatelessWidget {
  final String  text;
  final TextEditingController controller;
  final Color textColor;
  final Color background;
  final TextInputType textInputType;
  final double height;
  final double width;
  const TextFormFeildWidget({super.key, required this.text, required this.controller,this.textColor=AppColors.greyColor, 
    this.background=AppColors.whiteColor,  this.textInputType=TextInputType.text, required this.height, required this.width});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(6),
          borderSide: BorderSide(color: AppColors.greyColor),
        ),
        hintText: text,
        hintStyle: TextStyle(color: AppColors.greyColor,),
      ),
    );
  }
}
