import 'package:flutter/material.dart';
import 'package:spare_project/utils/icons.dart';
import 'package:spare_project/utils/colors.dart';

class AppLogo extends StatelessWidget {
  const AppLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Center(
      child: Image.asset(AppIcon.logo,height: height*132/812,width: width*96/375,),
    );
  }
}
