import 'package:flutter/material.dart';
import '../../../app/shared/colors.dart';
import '../../app/shared/text_styles.dart';

class CustomSearchTextFieldWidget extends StatefulWidget {
  final String? placeHolderText;
  const CustomSearchTextFieldWidget({this.placeHolderText, super.key});

  @override
  State<CustomSearchTextFieldWidget> createState() =>
      _CustomSearchTextFieldWidgetState();
}

class _CustomSearchTextFieldWidgetState
    extends State<CustomSearchTextFieldWidget> {
  final TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: (val) {},
      controller: textEditingController,
      style: KCustomTextStyle.kLight(context, 10),
      decoration: InputDecoration(
          filled: true,
          fillColor: KConstantColors.bgColorFaint,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(25.0)),
          suffixIcon:
              const Icon(Icons.search, color: KConstantColors.whiteColor),
          hintStyle: KCustomTextStyle.kLight(context, 10),
          hintText: widget.placeHolderText ?? "Search any product"),
    );
  }
}
