import 'package:flutter/material.dart';
import 'package:spare_project/ui/on_boarding/widgets/center_dots.dart';
import 'package:spare_project/ui/widgets/global_button.dart';
import 'package:spare_project/utils/colors.dart';
import 'package:spare_project/utils/icons.dart';



class PageContent extends StatelessWidget {
  const PageContent(
      {Key? key,
        required this.imagePath,
        required this.title,
        required this.height,
        required this.imageHeight, required this.text, required this.width, required this.imageWidth, required this.index})
      : super(key: key);

  final String imagePath;
  final String title;
  final String text;
  final double width;
  final double height;
  final double imageHeight;
  final double imageWidth;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(height: height*125/812,),
        Image.asset(
          imagePath,
          height: height * imageHeight / 812,
          width: width * imageWidth / 375,
          fit: BoxFit.fill,
        ),
        SizedBox(height: height*40/812,),
        Text(title,style: TextStyle(fontSize: 24,fontWeight: FontWeight.w600,color: AppColor.C_000000),),
        SizedBox(height: height*18/812,),
        Text(text,style: TextStyle(fontWeight: FontWeight.w400,color: AppColor.C_87898E,fontSize: 14),),
        SizedBox(height: height*21/812,),
        CenterDots(activeDotIndex: index-1),
      ],
    );
  }
}