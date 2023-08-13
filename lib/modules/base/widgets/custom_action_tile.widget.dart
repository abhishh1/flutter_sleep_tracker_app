import 'package:eatsure_restaurant_admin/app/shared/colors.dart';
import 'package:eatsure_restaurant_admin/app/shared/dimensions.dart';
import 'package:eatsure_restaurant_admin/app/shared/font_size.dart';
import 'package:eatsure_restaurant_admin/app/shared/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class ActionTile {
  final String title;
  final String description;
  final IconData iconData;
  final Function(bool value) onTap;
  final bool isEnabled;

  const ActionTile(
      {required this.title,
      required this.isEnabled,
      required this.onTap,
      required this.description,
      required this.iconData});
}

class CustomActionTileWidget extends StatelessWidget {
  final ActionTile actionTile;
  const CustomActionTileWidget({required this.actionTile, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 10.h,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            gradient: const LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Colors.black54, KConstantColors.bgColorFaint]),
            color: KConstantColors.bgColor),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            hSizedBox3,
            Icon(actionTile.iconData, color: KConstantColors.whiteColor),
            hSizedBox3,
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(actionTile.title,
                    style:
                        KCustomTextStyle.kBold(context, FontSize.kMedium + 2)),
                Text(actionTile.description,
                    style: KCustomTextStyle.kMedium(context, FontSize.kMedium))
              ],
            ),
            const Spacer(),
            Switch(
                activeColor: KConstantColors.purpleColor,
                value: actionTile.isEnabled,
                onChanged: (val) {
                  actionTile.onTap(val);
                })
          ],
        ),
      ),
    );
  }
}
