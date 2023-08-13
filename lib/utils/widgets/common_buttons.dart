import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../app/shared/colors.dart';
import '../../app/shared/font_size.dart';
import '../../app/shared/text_styles.dart';

class CommonRoundedButtonWidget extends StatelessWidget {
  final Function onTap;
  final String title;
  final String? description;
  const CommonRoundedButtonWidget(
      {required this.title, required this.onTap, this.description, super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap();
      },
      child: Container(
        height: description == null ? 6.h : 8.h,
        decoration: BoxDecoration(
            color: KConstantColors.blueColor,
            borderRadius: BorderRadius.circular(FontSize.kMedium)),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(title,
                    style: KCustomTextStyle.kMedium(
                        context, FontSize.kReguler - 2)),
                if (description != null)
                  Text(description ?? "",
                      style: KCustomTextStyle.kLight(
                          context, FontSize.kReguler - 4)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
