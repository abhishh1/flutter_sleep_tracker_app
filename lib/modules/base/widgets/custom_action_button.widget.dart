import 'package:eatsure_restaurant_admin/app/shared/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../../../app/shared/colors.dart';
import '../../../app/shared/font_size.dart';

class CustomActionButtonWidget extends StatelessWidget {
  final Function onTap;
  final String title;
  final String? description;
  const CustomActionButtonWidget(
      {required this.title, required this.onTap, this.description, super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap();
      },
      child: Container(
        width: 90.w,
        height: description == null ? 6.h : 8.h,
        decoration: BoxDecoration(
            gradient: const LinearGradient(colors: [
              KConstantColors.purpleColor,
              Colors.purple,
            ]),
            borderRadius: BorderRadius.circular(FontSize.kMedium)),
        child: Center(
          child: Text(title,
              style: KCustomTextStyle.kBold(context, FontSize.kReguler)),
        ),
      ),
    );
  }
}
