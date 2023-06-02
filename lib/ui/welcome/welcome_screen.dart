import 'package:flutter/material.dart';
import 'package:spare_project/ui/on_boarding/on_boarding.dart';
import 'package:spare_project/ui/widgets/global_button.dart';
import 'package:spare_project/utils/colors.dart';
import 'package:spare_project/utils/icons.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(AppIcon.dollar,height: height*288/812,width: width*300/375,),
            SizedBox(height: height*58/812,),
            Text('Spend & Save With Spare',style: TextStyle(fontSize: 24,fontWeight: FontWeight.w600,color: AppColor.C_000000),),
            SizedBox(height: height*18/812,),
            Text('''With spare, you can for bills,
 food, entertainment, utilities
           and still save''',style: TextStyle(fontWeight: FontWeight.w400,color: AppColor.C_87898E,fontSize: 14),),
            SizedBox(height: 2,),
          ],
        ),
      )
    );
  }
}