import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gorcery_app/core/widgets/custom_app_text_form_field.dart';
import 'package:gorcery_app/core/widgets/remeber_me.dart';
import 'package:gorcery_app/feature/auth/auth_view/sign_up_screen.dart';
import 'package:gorcery_app/feature/auth/auth_view/welcome_screen.dart';

import '../../../core/utils/app_colors.dart';
import '../../../core/widgets/container_shadow.dart';
import '../../../core/widgets/custom_app_button.dart';
import '../../../core/widgets/custom_app_rich_text.dart';
import '../../../core/widgets/custom_app_text_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool showPassword = false;
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final phoneController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    phoneController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [

            SizedBox(
              height: height * 0.47,
              width: double.infinity,
              child: Image.asset(
                'assets/images/auth2.png',
                fit: BoxFit.cover,
              ),
            ),


            Align(
              alignment: Alignment.topCenter,
              child: ContainerShadow(onPressed: (){Navigator.pushReplacement(context ,  MaterialPageRoute(builder: (context) => WelcomeScreen(),),);})
            ),


            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: height * 0.475,
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
                        textLabel: 'Welcome back !\n',
                        textDescription: 'Sign in to your account',
                      ),

                      const SizedBox(height: 24),

                      CustomAppTextFromField(
                        controller: emailController,
                        prefixIcon:SvgPicture.asset('assets/icons/email.svg') ,
                        hintText: 'Email Address',
                      ),
                      SizedBox(height: 12.h),



                      CustomAppTextFromField(
                        controller: passwordController,
                        prefixIcon:SvgPicture.asset('assets/icons/lock.svg') ,
                        hintText: 'Password',
                        obscureText: !showPassword,
                        suffixIcon: GestureDetector(
                          onTap: () {
                            setState(() {
                              showPassword = !showPassword;
                            });
                          },
                          child: SvgPicture.asset(
                            showPassword
                                ? 'assets/icons/eye_on.svg'
                                : 'assets/icons/eye-off.svg' ,
                          ),
                        ),
                      ),
                      SizedBox(height: 12.h),


                      RememberRow(),

                      SizedBox(height: 14.h),


                      CustomBtn(
                        icon: Image.asset('assets/images/person.png'),
                        text: 'Login',
                        onPressed: () {},
                      ),

                      SizedBox(height: 16.h),


                      CustomAppTextButton(
                        text: 'Don’t have an account ? ',
                        textButton: 'Sign up',
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpScreen()));

                        },
                      ),
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