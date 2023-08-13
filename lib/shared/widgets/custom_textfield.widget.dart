import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sizer/sizer.dart';
import '../../app/shared/colors.dart';
import '../../app/shared/font_size.dart';
import '../../app/shared/text_styles.dart';

class CustomBoxTextField extends StatelessWidget {
  final TextEditingController? textEditingController;
  final String hintText;
  final bool? limitChars;
  final int? limit;
  final double? width;
  final Function(String val)? onChanged;
  final Color? textColor;
  final TextInputType? textInputType;
  final bool isNumeric;
  final int? minLines;
  final int? maxLines;

  const CustomBoxTextField(
      {super.key,
      this.onChanged,
      this.isNumeric = false,
      required this.hintText,
      this.textColor,
      this.limitChars,
      this.width,
      this.minLines,
      this.maxLines,
      this.limit,
      required this.textEditingController,
      this.textInputType = TextInputType.text});
  @override
  Widget build(BuildContext context) {
    final TextEditingController kTextEditingController =
        TextEditingController();
    final FocusNode focusNode = FocusNode();

    bool kLimit = limitChars ?? false;
    return Center(
      child: SizedBox(
          child: TextField(
        minLines: minLines,
        maxLines: maxLines,
        onSubmitted: (val) {
          focusNode.unfocus();
        },
        focusNode: focusNode,
        keyboardType: textInputType,
        textCapitalization: TextCapitalization.sentences,
        inputFormatters: [
          if (kLimit) LengthLimitingTextInputFormatter(limit),
          if (isNumeric) FilteringTextInputFormatter.digitsOnly
        ],
        textAlign: TextAlign.left,
        onChanged: onChanged,
        controller: textEditingController ?? kTextEditingController,
        style: KCustomTextStyle.kMedium(
            context, FontSize.kMedium.sp - 4, KConstantColors.whiteColor),
        decoration: InputDecoration(
          filled: true,
          fillColor: KConstantColors.bgColorFaint,
          hintText: hintText,
          hintStyle: KCustomTextStyle.kMedium(
              context, FontSize.kMedium.sp - 4, KConstantColors.greyColor),
          border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(8.0)),
        ),
      )),
    );
  }
}

class CustomTextField extends StatelessWidget {
  final TextEditingController? textEditingController;
  final String hintText;
  final bool? limitChars;
  final int? limit;
  final double? width;
  final Function(String val)? onChanged;
  final Color? textColor;
  final TextInputType? textInputType;
  final bool isNumeric;
  final int? minLines;
  final int? maxLines;

  const CustomTextField(
      {super.key,
      this.onChanged,
      this.isNumeric = false,
      required this.hintText,
      this.textColor,
      this.limitChars,
      this.width,
      this.minLines,
      this.maxLines,
      this.limit,
      required this.textEditingController,
      this.textInputType = TextInputType.text});
  @override
  Widget build(BuildContext context) {
    final TextEditingController kTextEditingController =
        TextEditingController();
    final FocusNode focusNode = FocusNode();

    bool kLimit = limitChars ?? false;
    return Center(
      child: SizedBox(
          child: TextField(
        minLines: minLines,
        maxLines: maxLines,
        onSubmitted: (val) {
          focusNode.unfocus();
        },
        focusNode: focusNode,
        keyboardType: textInputType,
        textCapitalization: TextCapitalization.sentences,
        inputFormatters: [
          if (kLimit) LengthLimitingTextInputFormatter(limit),
          if (isNumeric) FilteringTextInputFormatter.digitsOnly
        ],
        textAlign: TextAlign.left,
        onChanged: onChanged,
        controller: textEditingController ?? kTextEditingController,
        style:
            KCustomTextStyle.kMedium(context, 10, KConstantColors.whiteColor),
        decoration: InputDecoration(
          filled: true,
          fillColor: KConstantColors.bgColor,
          hintText: hintText,
          hintStyle:
              KCustomTextStyle.kMedium(context, 10, KConstantColors.greyColor),
          border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(16.0)),
        ),
      )),
    );
  }
}

class CustomPasswordTextField extends StatelessWidget {
  final TextEditingController textEditingController;

  const CustomPasswordTextField(
      {required this.textEditingController, super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: true,
      style: KCustomTextStyle.kMedium(
          context, FontSize.kMedium, KConstantColors.whiteColor),
      decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
          hintStyle: KCustomTextStyle.kLight(context, FontSize.kMedium),
          hintText: "Password",
          filled: true,
          fillColor: KConstantColors.bgColorFaint),
      controller: textEditingController,
    );
  }
}
