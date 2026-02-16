import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/app_colors.dart';

class CustomAppTextFromField extends StatelessWidget {
  const CustomAppTextFromField({
    super.key,
    required this.controller,
    required this.prefixIcon,
    required this.hintText,
    this.suffixIcon,
    this.obscureText = false,
  });

  final TextEditingController controller;
  final Widget prefixIcon;
  final Widget? suffixIcon;
  final String hintText;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: obscureText,


      style: TextStyle(
        fontSize: 35.sp,
        fontWeight: FontWeight.w500,
        color: AppColors.black,
      ),

      decoration: InputDecoration(
        filled: true,
        fillColor: AppColors.white,


        contentPadding: EdgeInsets.symmetric(
          vertical: 14.h,
          horizontal: 16.w,
        ),


        prefixIcon: Padding(
          padding: EdgeInsets.all(20.w),
          child: SizedBox(
            width: 10.w,
            height: 10.h,
            child: prefixIcon,
          ),
        ),


        suffixIcon: suffixIcon == null
            ? null
            : Padding(
          padding: EdgeInsets.all(20.w),
          child: SizedBox(
            width: 10.w,
            height: 10.h,
            child: suffixIcon,
        ),),

        hintText: hintText,
        hintStyle: TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: 25.sp,
          color: AppColors.gray,
        ),

        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.r),
          borderSide: BorderSide(color: AppColors.white),
        ),



        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.r),
          borderSide: BorderSide(
            color: AppColors.primary,
            width: 1.2,
          ),
        ),
      ),
    );
  }
}