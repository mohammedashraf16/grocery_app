import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gorcery_app/core/utils/app_colors.dart';

class RememberRow extends StatefulWidget {
  const RememberRow({super.key});

  @override
  State<RememberRow> createState() => _RememberRowState();
}

class _RememberRowState extends State<RememberRow> {

  bool rememberMe = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [

 // toggle button
        GestureDetector(
          onTap: () {
            setState(() {
              rememberMe = !rememberMe;
            });
          },
          child: Icon(
            rememberMe
                ? Icons.toggle_on
                : Icons.toggle_off,
            size: 50.sp,
            color: rememberMe
                ? AppColors.primary
                : Colors.grey,
          ),
        ),

        SizedBox(width: 8.w),

        Text(
          "Remember me",
          style: TextStyle(
            fontSize: 30.sp,
            color: Colors.grey,
          ),
        ),

        Spacer(),

        GestureDetector(
          onTap: () {},
          child: Text(
            "Forgot password",
            style: TextStyle(
              fontSize: 30.sp,
              color: Colors.blue,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ],
    );
  }
}