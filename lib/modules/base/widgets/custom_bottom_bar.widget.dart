import 'package:eatsure_restaurant_admin/app/shared/colors.dart';
import 'package:eatsure_restaurant_admin/app/shared/dimensions.dart';
import 'package:eatsure_restaurant_admin/app/shared/font_size.dart';
import 'package:eatsure_restaurant_admin/app/shared/text_styles.dart';
import 'package:eatsure_restaurant_admin/modules/base/notifier/base.notifier.dart';
import 'package:eatsure_restaurant_admin/modules/base/views/journal.view.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

class CustomBottomBarWidget extends StatelessWidget {
  const CustomBottomBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    BaseNotifier baseNotifier({required bool rendeUI}) =>
        Provider.of<BaseNotifier>(context, listen: rendeUI);

    Widget bottomBarBlock(
        {required int index,
        required String title,
        required IconData iconData}) {
      return GestureDetector(
        onTap: () {
          baseNotifier(rendeUI: false).setBottomBarIndex(value: index);
        },
        child: Container(
          height: 7.h,
          decoration: BoxDecoration(
              color: KConstantColors.bgColor,
              borderRadius: BorderRadius.circular(12)),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                hSizedBox2,
                Icon(iconData, size: 20, color: KConstantColors.whiteColor),
                hSizedBox2,
                Text(title,
                    style: KCustomTextStyle.kBold(context, FontSize.kLarge)),
                hSizedBox2
              ],
            ),
          ),
        ),
      );
    }

    Widget miniBarBlock({required int index, required IconData iconData}) {
      return GestureDetector(
        onTap: () {
          baseNotifier(rendeUI: false).setBottomBarIndex(value: index);
          pushNewScreen(context, screen: const JournalView());
        },
        child: Container(
          height: 7.h,
          decoration: BoxDecoration(
              color: KConstantColors.bgColorFaint,
              borderRadius: BorderRadius.circular(12)),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                hSizedBox2,
                Icon(iconData, size: 20, color: KConstantColors.whiteColor),
                hSizedBox2
              ],
            ),
          ),
        ),
      );
    }

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        bottomBarBlock(
            index: 0, iconData: FontAwesomeIcons.moon, title: "Tracker"),
        miniBarBlock(index: 1, iconData: FontAwesomeIcons.calendarWeek),
        miniBarBlock(index: 2, iconData: Icons.graphic_eq),
        miniBarBlock(index: 3, iconData: FontAwesomeIcons.user),
      ],
    );
  }
}
