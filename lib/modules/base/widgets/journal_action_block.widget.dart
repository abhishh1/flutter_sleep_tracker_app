import 'package:eatsure_restaurant_admin/app/shared/colors.dart';
import 'package:eatsure_restaurant_admin/app/shared/dimensions.dart';
import 'package:eatsure_restaurant_admin/app/shared/font_size.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../../../app/shared/text_styles.dart';

class BaseAction {
  final String title;
  final String subtitle;
  final IconData iconData;
  final Color color;

  const BaseAction(
      {required this.title,
      required this.color,
      required this.subtitle,
      required this.iconData});
}

class CustomActionBlockWidget extends StatelessWidget {
  final BaseAction baseAction;
  const CustomActionBlockWidget({super.key, required this.baseAction});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          height: 13.h,
          width: 40.w,
          decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                    color: baseAction.color,
                    offset: Offset.zero,
                    blurRadius: 5,
                    spreadRadius: 5)
              ],
              color: KConstantColors.bgColorFaint,
              borderRadius: BorderRadius.circular(25)),
          child: Padding(
            padding: const EdgeInsets.all(4.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    hSizedBox2,
                    Text(baseAction.title,
                        style:
                            KCustomTextStyle.kLight(context, FontSize.kMedium)),
                  ],
                ),
                Row(
                  children: [
                    hSizedBox2,
                    Icon(baseAction.iconData,
                        size: 18, color: KConstantColors.whiteColor),
                    hSizedBox2,
                    Text(baseAction.subtitle,
                        textAlign: TextAlign.center,
                        style: KCustomTextStyle.kBold(
                            context, FontSize.header - 4)),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
