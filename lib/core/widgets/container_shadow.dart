import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/app_colors.dart';

class ContainerShadow extends StatelessWidget {
  final VoidCallback? onPressed;

  const ContainerShadow({super.key, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 131.h,
      width: double.infinity,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.black,
            Colors.transparent
          ],
        ),
      ),
      child: Stack(

        children:[

          Row(
          //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              color: AppColors.white,
                iconSize: 25,
                onPressed:onPressed,
                icon:Icon(Icons.arrow_back,  )
            ),
SizedBox(width: 300.w,),

             Text(
                'Welcome',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: AppColors.white,
                  fontSize: 30.sp,
                  fontWeight: FontWeight.bold,

                ),
              ),
        ]),
    ]
      )

    );
  }
}
