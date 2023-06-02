import 'package:flutter/material.dart';
import 'package:spare_project/utils/colors.dart';


class CenterDots extends StatelessWidget {
  const CenterDots({Key? key, required this.activeDotIndex}) : super(key: key);

  final int activeDotIndex;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(3, (index) {
        if (activeDotIndex == index) {
          return activeDot();
        }
        return inActiveDot();
      }),
    );
  }
  Widget activeDot() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 2),
      width: 20,
      height: 8,
      decoration:  BoxDecoration(
        color: AppColor.C_407AFF,
        borderRadius: BorderRadius.circular(5),
      ),
    );
  }

  Widget inActiveDot() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 2),
      width: 5,
      height: 5,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: AppColor.C_000000.withOpacity(0.32),
      ),
    );
  }
}