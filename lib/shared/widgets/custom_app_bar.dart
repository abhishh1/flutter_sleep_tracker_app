import 'package:flutter/material.dart';
import '../../app/shared/dimensions.dart';
import '../../app/shared/text_styles.dart';
import 'custom_buttons.dart';

class CustomAppBar extends StatelessWidget {
  final String trKey;
  final Function? onBackTap;
  final List<Widget>? action;
  final bool? showBackButton;

  const CustomAppBar(
      {super.key,
      this.action,
      this.showBackButton,
      this.onBackTap,
      required this.trKey});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(children: [
        vSizedBox1,
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            hSizedBox2,
            if (showBackButton == null)
              CustomCircleButtonWidget(
                  onTap: () {
                    onBackTap == null ? Navigator.pop(context) : onBackTap!();
                  },
                  iconData: Icons.arrow_back_ios),
            hSizedBox2,
            Text(trKey, style: KCustomTextStyle.kBold(context, 12)),
            const Spacer(),
            if (action != null) ...action!
          ],
        ),
      ]),
    );
  }
}
