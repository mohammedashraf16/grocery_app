import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gorcery_app/core/utils/app_colors.dart';

// this custom class for first text (text only)
class CustomAppRichText extends StatelessWidget {
final String textLabel;
final String textDescription;
  const CustomAppRichText({super.key, required this.textLabel, required this.textDescription});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Text.rich(
        textAlign:TextAlign.start,
        TextSpan(
          text: textLabel,
          style: TextStyle(color:AppColors.black , fontSize: 32.sp, fontWeight: FontWeight.bold ),
          children: [
            TextSpan(
              text:textDescription,
              style: TextStyle(
                color: AppColors.gray,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
       maxLines: 3,
       overflow: TextOverflow.ellipsis,
      ),
    )



    ;
  }
}
