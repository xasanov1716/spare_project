import 'package:flutter/material.dart';
import 'package:spare_project/utils/colors.dart';

class GlobalButton extends StatelessWidget {
  const GlobalButton({Key? key, required this.title, required this.onTap, required this.width, required this.height})
      : super(key: key);

  final String title;
  final VoidCallback onTap;
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32,vertical: 32),
      child: Ink(
        height: height*46/812,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(23),
          color: AppColor.C_407AFF,
        ),
        child: InkWell(
          onTap: onTap,
          child: Center(
            child: Text(
              title,
              style:const TextStyle(
                fontWeight: FontWeight.w600,
                color: AppColor.C_FFFFFF,
                fontSize: 16,
              ),
            ),
          ),
        ),
      ),
    );
  }
}