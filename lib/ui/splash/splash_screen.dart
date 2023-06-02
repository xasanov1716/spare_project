import 'package:flutter/material.dart';
import 'package:spare_project/ui/splash/splash_screen_copy.dart';
import 'package:spare_project/ui/widgets/app_logo.dart';
import 'package:spare_project/utils/colors.dart';
import 'package:spare_project/utils/icons.dart';


class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    _navigateToWelcomeScreen(context);
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: AppColor.C_FFFFFF,
      body: Container(
        height: height*812/812,
        width: width*375/375,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: AppColor.C_407AFF,
        ),
        child: AppLogo(),
      ),
    );
  }
  void _navigateToWelcomeScreen(BuildContext context) async {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (BuildContext context) {
            return const SplashScreenCopy();
          },
        ),
      );
    });
  }
}