import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../../app/shared/colors.dart';
import '../../app/shared/font_size.dart';
import '../../app/shared/text_styles.dart';

class CustomRoundedButton extends StatelessWidget {
  final String label;
  final dynamic onTap;
  final Color? backgroundColor;
  final Color? iconColor;
  final double? width;
  final double? height;
  final double? radius;
  final Color? textColor;
  final IconData? iconData;
  final double? kFontSize;
  const CustomRoundedButton(
      {super.key,
      required this.onTap,
      this.radius,
      this.iconData,
      this.kFontSize,
      this.textColor,
      this.backgroundColor,
      required this.label,
      this.iconColor,
      this.height,
      this.width});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap();
      },
      child: Container(
        width: width?.w ?? 90.w,
        height: height?.h ?? 5.h,
        decoration: BoxDecoration(
            color: backgroundColor ?? KConstantColors.blueColor,
            borderRadius: BorderRadius.circular(radius ?? 8)),
        child: Center(
            child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(label,
                    style: KCustomTextStyle.kMedium(context, kFontSize ?? 10,
                        textColor ?? KConstantColors.whiteColor)))),
      ),
    );
  }
}

class CustomCircleButtonWidget extends StatelessWidget {
  final IconData iconData;
  final Function onTap;
  const CustomCircleButtonWidget(
      {required this.onTap, required this.iconData, super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap();
      },
      child: Container(
        decoration: BoxDecoration(
            color: KConstantColors.bgColorFaint,
            border: Border.all(color: KConstantColors.whiteColor),
            borderRadius: BorderRadius.circular(10)),
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Center(
              child:
                  Icon(iconData, size: 12, color: KConstantColors.whiteColor)),
        ),
      ),
    );
  }
}

class LargeCustomRoundedButton extends StatelessWidget {
  final String title;
  final Function onTap;
  final Color? color;
  final double? width;
  final double? height;

  const LargeCustomRoundedButton(
      {required this.onTap,
      this.width,
      this.height,
      this.color,
      required this.title,
      super.key});

  @override
  Widget build(BuildContext context) {
    return CustomRoundedButton(
        backgroundColor: color ?? KConstantColors.bgColorFaint,
        kFontSize: FontSize.kMedium,
        radius: 20,
        height: height ?? 0.9.h,
        width: width ?? 100.w,
        onTap: () {
          onTap();
        },
        label: title);
  }
}
