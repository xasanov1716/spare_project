import 'package:flutter/material.dart';
import 'package:spare_project/ui/on_boarding/on_boarding.dart';
import 'package:spare_project/utils/colors.dart';
import 'package:spare_project/utils/icons.dart';

import '../welcome/welcome_screen.dart';

class SplashScreenCopy extends StatelessWidget {
  const SplashScreenCopy({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
  _navigateToWelcomeScreen(context);
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: AppColor.C_FFFFFF,
      body: Center(
        child: Image.asset(AppIcon.spare,height: height*60/812,width: width*188/375,),
      ),
    );
  }
  void _navigateToWelcomeScreen(BuildContext context) async {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (BuildContext context) {
            return OnBoarding();
          },
        ),
      );
    });
  }
}
