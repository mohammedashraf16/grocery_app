
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gorcery_app/core/widgets/custom_app_text_form_field.dart';
import 'package:gorcery_app/feature/auth/auth_view/login_screen.dart';

import '../../../core/utils/app_colors.dart';
import '../../../core/widgets/container_shadow.dart';
import '../../../core/widgets/custom_app_button.dart';
import '../../../core/widgets/custom_app_rich_text.dart';
import '../../../core/widgets/custom_app_text_button.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final phoneController = TextEditingController();
  bool showPassword = false;

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    phoneController.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    final height = MediaQuery
        .of(context)
        .size
        .height;

    return SafeArea(
      child: Scaffold(

        body: Stack(

          children: [
            SizedBox(
              height: height * 0.40,
              width: double.infinity,
              child: Image.asset(
                'assets/images/auth3.png',
                fit: BoxFit.cover,
              ),
            ),


            Align(
              alignment: Alignment.topCenter,
              child: ContainerShadow(onPressed: (){Navigator.pushReplacement(context ,  MaterialPageRoute(builder: (context) => LoginScreen(),),);}),
            ),


            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: height * 0.52,
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
                        textLabel: 'Create account !\n',
                        textDescription:
                        'Quickly create account ',
                      ),

                      const SizedBox(height: 24),

                      CustomAppTextFromField(controller: emailController,
                          prefixIcon: SvgPicture.asset('assets/icons/email.svg') ,
                          hintText: 'Email Address'),

                      SizedBox(height: 12),

                      CustomAppTextFromField(controller: phoneController,
                          prefixIcon: SvgPicture.asset('assets/icons/telephone.svg') ,
                          hintText: 'phone number'),

                      SizedBox(height: 12),

                      CustomAppTextFromField(controller: passwordController,
                          prefixIcon: Icon(Icons.lock),
                          hintText: 'password',
                        obscureText: !showPassword,
                        suffixIcon: GestureDetector(
                          onTap: () {
                            setState(() {
                              showPassword = !showPassword;
                            });
                          },
                          child: Icon(
                            showPassword
                                ? Icons.visibility
                                : Icons.visibility_off,
                          ),
                        ),
                      ),

                      SizedBox(height: 15.h),

                      CustomBtn(text: 'Sign up', onPressed: (){}),

                      SizedBox(height: 15.h),


                      Center(child: CustomAppTextButton(
                        text: 'Already have an account ? ',
                        textButton: 'Login',
                        onTap: () {

                        },))
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
