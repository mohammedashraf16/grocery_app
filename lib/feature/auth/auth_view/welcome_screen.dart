import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gorcery_app/core/widgets/container_shadow.dart';
import 'package:gorcery_app/core/widgets/custom_app_button.dart';
import 'package:gorcery_app/core/widgets/custom_app_rich_text.dart';
import 'package:gorcery_app/feature/auth/auth_view/login_screen.dart';

import '../../../core/utils/app_colors.dart';
import '../../../core/widgets/custom_app_text_button.dart';
class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Scaffold(

        body: Stack(

          children: [
            SizedBox(
              height: height * 0.6,
              width: double.infinity,
              child: Image.asset(
                'assets/images/auth1.png',
                fit: BoxFit.cover,
              ),
            ),
      
      
            Align(
              alignment: Alignment.topCenter,
              child: ContainerShadow(),
            ),
      
      
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: height * 0.38,
                width: double.infinity,
                padding: const EdgeInsets.all(24),
                decoration: const BoxDecoration(
                  color: Color(0xffF4F5F9),
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(28),
                  ),
                ),
      
      
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                  
                      CustomAppRichText(
                        textLabel: 'Welcome\n',
                        textDescription:
                        'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy',
                      ),
                  
                      const SizedBox(height: 24),
                  
                      CustomBtn(
                        icon: Image.asset('assets/images/google.png'),
                        text: 'Continue with google',
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()));
                        },
                        color:  AppColors.white,
                      ),
                  
                      const SizedBox(height: 12),
                  
                      CustomBtn(
                        icon: Image.asset('assets/images/person.png'),
                        text: 'Create an account',
                        onPressed: () {print('clicked');},
                      ),
                      SizedBox(height: 20.h,),
                  
                      Center(child: CustomAppTextButton(text: 'Already have an account ? ', textButton: 'Login', onTap: () {},))
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}