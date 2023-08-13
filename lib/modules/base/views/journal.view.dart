import 'package:eatsure_restaurant_admin/app/shared/colors.dart';
import 'package:eatsure_restaurant_admin/app/shared/dimensions.dart';
import 'package:eatsure_restaurant_admin/app/shared/font_size.dart';
import 'package:eatsure_restaurant_admin/app/shared/text_styles.dart';
import 'package:eatsure_restaurant_admin/modules/base/widgets/journal_action_block.widget.dart';
import 'package:eatsure_restaurant_admin/shared/widgets/custom_app_bar.dart';
import 'package:eatsure_restaurant_admin/shared/widgets/scaffold_shell.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class JournalView extends StatelessWidget {
  const JournalView({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldShellForLists(
      widgets: [
        const CustomAppBar(trKey: ''),
        Center(
            child: Text("Journal",
                style: KCustomTextStyle.kBold(context, FontSize.header))),
        Center(
            child: Text("Your weekly progress",
                style: KCustomTextStyle.kLight(context, FontSize.kMedium))),
        vSizedBox3,
        const RenderDemoGraphWidget(),
        vSizedBox3,
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CustomActionBlockWidget(
                baseAction: BaseAction(
                    color: KConstantColors.depthWiteColor,
                    title: "In Bed",
                    subtitle: "7h 56m",
                    iconData: FontAwesomeIcons.bed)),
            CustomActionBlockWidget(
                baseAction: BaseAction(
                    title: "Asleep",
                    color: KConstantColors.blueColor,
                    subtitle: "7h 8m",
                    iconData: FontAwesomeIcons.moon)),
          ],
        ),
        vSizedBox1,
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CustomActionBlockWidget(
                baseAction: BaseAction(
                    color: KConstantColors.redColor,
                    title: "Went to bed",
                    subtitle: "23:12",
                    iconData: FontAwesomeIcons.bed)),
            CustomActionBlockWidget(
                baseAction: BaseAction(
                    color: KConstantColors.greenColor,
                    title: "Woke up",
                    subtitle: "08:45",
                    iconData: FontAwesomeIcons.sun)),
          ],
        )
      ],
    );
  }
}

class RenderDemoGraphWidget extends StatelessWidget {
  const RenderDemoGraphWidget({super.key});

  @override
  Widget build(BuildContext context) {
    List<LineChartBarData> data = [
      LineChartBarData(
        spots: [
          const FlSpot(1, 4),
          const FlSpot(2, 2),
          const FlSpot(3, 6),
          const FlSpot(4, 10),
          const FlSpot(5, 7),
          const FlSpot(6, 8),
        ],
      )
    ];

    return SizedBox(
      width: 100.w,
      height: 30.h,
      child: LineChart(
        LineChartData(showingTooltipIndicators: [], lineBarsData: data),
      ),
    );
  }
}
