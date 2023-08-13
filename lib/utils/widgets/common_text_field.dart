import 'package:flutter/material.dart';

import '../../app/shared/colors.dart';
import '../../app/shared/font_size.dart';
import '../../app/shared/text_styles.dart';

class CommonTextFieldWidget extends StatelessWidget {
  final TextEditingController textEditingController;
  final String hintText;
  const CommonTextFieldWidget(
      {required this.textEditingController, required this.hintText, super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: KCustomTextStyle.kMedium(context, FontSize.kMedium),
      controller: textEditingController,
      decoration: InputDecoration(
          filled: true,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(FontSize.kMedium)),
          fillColor: KConstantColors.bgColorFaint,
          hintStyle: KCustomTextStyle.kMedium(
              context, FontSize.kMedium, KConstantColors.textColor),
          hintText: hintText),
    );
  }
}
