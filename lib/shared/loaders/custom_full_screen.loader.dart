import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import '../../app/shared/dimensions.dart';
import '../../app/shared/font_size.dart';
import '../../app/shared/text_styles.dart';
import '../widgets/custom_buttons.dart';
import '../widgets/scaffold_shell.dart';

class CustomFullScreenLoaderView extends StatefulWidget {
  final String? assetPath;
  final String title;
  final String? subTitle;
  final String? actionButtonTitle;
  final Function? onActionButtonTap;
  final Function initAction;
  const CustomFullScreenLoaderView(
      {required this.title,
      this.subTitle,
      this.assetPath,
      this.onActionButtonTap,
      required this.initAction,
      this.actionButtonTitle,
      super.key});

  @override
  State<CustomFullScreenLoaderView> createState() =>
      _CustomFullScreenLoaderViewState();
}

class _CustomFullScreenLoaderViewState
    extends State<CustomFullScreenLoaderView> {
  @override
  void initState() {
    widget.initAction();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ScaffoldShellForLists(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        widgets: [
          vSizedBox4,
          Center(
            child: SizedBox(
                height: 300,
                child: Lottie.asset(
                    widget.assetPath != null
                        ? "assets/animations/${widget.assetPath}.json"
                        : "assets/animations/loader.json",
                    fit: BoxFit.cover)),
          ),
          Text(widget.title,
              style: KCustomTextStyle.kBold(context, FontSize.header - 2)),
          vSizedBox1,
          Text(widget.subTitle ?? "Do not press back button",
              textAlign: TextAlign.center,
              style: KCustomTextStyle.kLight(context, FontSize.kMedium)),
          vSizedBox3,
          if (widget.actionButtonTitle != null)
            LargeCustomRoundedButton(
                onTap: () {
                  if (widget.onActionButtonTap != null) {
                    widget.onActionButtonTap!();
                  }
                },
                title: widget.actionButtonTitle ?? "")
        ]);
  }
}
