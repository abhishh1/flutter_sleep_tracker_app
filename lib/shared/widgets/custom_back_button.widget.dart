import 'package:flutter/material.dart';
import '../../app/shared/colors.dart';

class CustomBackButtonWidget extends StatelessWidget {
  const CustomBackButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pop(context);
      },
      child: const CircleAvatar(
          backgroundColor: KConstantColors.bgColorFaint,
          child: Icon(Icons.arrow_back_ios, color: KConstantColors.blueColor)),
    );
  }
}
