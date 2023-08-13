import 'package:eatsure_restaurant_admin/app/shared/font_size.dart';
import 'package:flutter/material.dart';
import '../../app/shared/colors.dart';
import '../../app/shared/dimensions.dart';
import '../../app/shared/text_styles.dart';
import 'custom_buttons.dart';

class CommonAlertDialogues {
  static showCustomAlertDialog(
      {required String title,
      required String? description,
      required Function() actionTap,
      required BuildContext context}) {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            actions: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CustomRoundedButton(
                      backgroundColor: KConstantColors.bgColorFaint,
                      width: 30,
                      onTap: () {
                        Navigator.pop(context);
                      },
                      label: "No"),
                  hSizedBox2,
                  CustomRoundedButton(
                      width: 30,
                      onTap: () {
                        actionTap();
                      },
                      label: "Yes")
                ],
              )
            ],
            backgroundColor: KConstantColors.bgColor,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            title: Text(title,
                style: KCustomTextStyle.kBold(context, FontSize.kMedium + 2)),
            content: Text(
                description ?? "This action cannot be undone in future",
                style: KCustomTextStyle.kMedium(context, FontSize.kMedium)),
          );
        });
  }
}
