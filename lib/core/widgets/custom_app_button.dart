import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/app_colors.dart';

class CustomBtn extends StatelessWidget {
  const CustomBtn({
    super.key,
    required this.text,
    required this.onPressed,
    this.icon,
    this.color,
    this.gradient,
  });

  final String text;
  final VoidCallback? onPressed;
  final Widget? icon;
  final Color? color;
  final Gradient? gradient;

  @override
  Widget build(BuildContext context) {
    final radius = BorderRadius.circular(8.r);

    final textColor = color != null ? Colors.black : Colors.white;

    return Material(
      color: Colors.transparent,
      child: InkWell(
        borderRadius: radius,
        onTap: onPressed ?? () {},
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: color ?? AppColors.primary,
            padding: EdgeInsets.symmetric(
              horizontal: 12.w,
              vertical: 10.h,
            ),
            minimumSize: Size(double.infinity, 50.h),
            shape: RoundedRectangleBorder(
              borderRadius: radius,
            ),
          ),
          onPressed: onPressed,
          child: Row(
            children: [
              if (icon != null)
                Padding(
                  padding: EdgeInsets.only(
                    left: 12.w,
                    right: 15.w,
                  ),
                  child: icon!,
                )
              else
                SizedBox(width:8.w),

              Expanded(
                child: Center(
                  child: Text(
                    text,
                    style: TextStyle(
                      fontSize: 28.sp,
                      fontWeight: FontWeight.w600,
                      color: textColor,
                    ),
                  ),
                ),
              ),

              if (icon != null) SizedBox(width: 44.w),
            ],
          ),
        ),
      ),
    );
  }
}