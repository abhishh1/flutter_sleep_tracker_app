import 'package:eatsure_restaurant_admin/app/shared/colors.dart';
import 'package:eatsure_restaurant_admin/app/shared/text_styles.dart';
import 'package:eatsure_restaurant_admin/modules/base/widgets/journal_action_block.widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import '../../../app/shared/dimensions.dart';
import '../../../app/shared/font_size.dart';
import '../notifier/base.notifier.dart';
import '../widgets/custom_action_button.widget.dart';
import '../widgets/custom_action_tile.widget.dart';
import '../widgets/custom_bottom_bar.widget.dart';

class BaseView extends StatefulWidget {
  const BaseView({super.key});

  @override
  State<BaseView> createState() => _BaseViewState();
}

class _BaseViewState extends State<BaseView> {
  BaseNotifier baseNotifier({required bool rendeUI}) =>
      Provider.of<BaseNotifier>(context, listen: rendeUI);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 100.h,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                end: Alignment.topLeft,
                begin: Alignment.bottomRight,
                stops: const [
              0.1,
              0.4
            ],
                colors: [
              KConstantColors.greenColor.withGreen(20),
              KConstantColors.bgColor,
            ])),
        child: SingleChildScrollView(
          child: Column(
            children: [
              vSizedBox3,
              vSizedBox2,
              Center(
                  child: Text("Sleep Tracker 😴",
                      style: KCustomTextStyle.kBold(context, FontSize.header))),
              vSizedBox3,
              const Center(
                  child: CustomActionBlockWidget(
                      baseAction: BaseAction(
                          color: KConstantColors.purpleColor,
                          title: "Average Sleep",
                          subtitle: "7h 12m",
                          iconData: FontAwesomeIcons.moon))),
              vSizedBox3,
              CustomActionTileWidget(
                  actionTile: ActionTile(
                      isEnabled: baseNotifier(rendeUI: true).alarmEnabled,
                      onTap: (val) {
                        baseNotifier(rendeUI: false).toggleAlarmEnabled();
                      },
                      title: "Sleep Sounds",
                      description: "Walk under the rain",
                      iconData: Icons.music_note)),
              CustomActionTileWidget(
                  actionTile: ActionTile(
                      isEnabled: baseNotifier(rendeUI: true).sleepSoundEnabled,
                      onTap: (val) {
                        baseNotifier(rendeUI: false).toggleSleepSound();
                      },
                      title: "Alarm",
                      description: "07:30",
                      iconData: FontAwesomeIcons.bell)),
              CustomActionTileWidget(
                  actionTile: ActionTile(
                      isEnabled:
                          baseNotifier(rendeUI: true).sleepRecorderEnabled,
                      onTap: (val) {
                        baseNotifier(rendeUI: false)
                            .toggleSleepRecorderEnabled();
                      },
                      title: "Sleep Recorder",
                      description: "Medium range",
                      iconData: FontAwesomeIcons.microphone)),
              vSizedBox3,
              CustomActionButtonWidget(title: "Sleep Now", onTap: () {}),
              vSizedBox3,
              vSizedBox3,
              const CustomBottomBarWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
