import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../utils/app_colors.dart';

class CustomAppTextButton extends StatelessWidget {
  final String text;
  final String textButton;
  final VoidCallback onTap;

  const CustomAppTextButton({
    super.key,
    required this.text,
    required this.textButton,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [

        Text(
          text,
          style: TextStyle(
            color: AppColors.gray,
            fontSize: 25.sp,
            fontWeight: FontWeight.w300,
          ),
        ),

        SizedBox(width: 6.w),

        GestureDetector(
          onTap: onTap,
          child: Text(
            textButton,
            style: TextStyle(
              color: AppColors.black,
              fontSize: 25.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),

      ],
    );
  }
}