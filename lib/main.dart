import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gorcery_app/feature/auth/auth_view/welcome_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Future.delayed(Duration(seconds: 5),(){
    runApp(const MyApp());
  });

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(957.2, 638.21),
      minTextAdapt: true,
      splitScreenMode: true,

      builder: (context, child) {

        return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: const WelcomeScreen(),
        );
      },
    );
  }
}