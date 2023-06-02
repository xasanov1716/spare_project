import 'package:flutter/material.dart';
import 'package:spare_project/main.dart';
import 'package:spare_project/ui/widgets/global_button.dart';
import 'package:spare_project/utils/colors.dart';
import 'package:spare_project/utils/icons.dart';
import 'package:spare_project/ui/on_boarding/widgets/page_content.dart';
import 'package:spare_project/ui/on_boarding/widgets/center_dots.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        children: [
          Expanded(child: PageView(
            children: [
              PageContent(imagePath: AppIcon.dollar, title: 'Spend & Save With Spare', height: height, imageHeight: 288, text: '''With spare, you can for bills,
 food, entertainment, utilities
          and still save  ''', width: width, imageWidth: 300, index: 1,),
              PageContent(imagePath: AppIcon.safety, title: 'Spare Is Easy & Secure', height: height, imageHeight: 281, text: '''spare is easy to use and all your
      transactions are secured''', width: 230, imageWidth: 360, index: 2,),
              PageContent(imagePath: AppIcon.send, title: 'Send Money With Spare', height: height, imageHeight: 240, text: '''Transfer money easily to friends
    and families on your contact
                list using spare ''', width: width, imageWidth: 328, index: 3,),
            ],
          )),
          GlobalButton(title: 'Get started', onTap: (){}, width: width, height: height)
        ],
      ),
    );
  }
}
