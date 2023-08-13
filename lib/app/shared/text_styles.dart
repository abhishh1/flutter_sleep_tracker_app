import 'package:flutter/material.dart';
import 'fonts.dart';
import 'colors.dart';
import 'package:sizer/sizer.dart';

class KCustomTextStyle {
  static kBold(BuildContext context, double fontSize,
      [Color? color, bool needItalics = false, FontWeight? fontWeight]) {
    return TextStyle(
        fontFamily: KConstantFonts.poppinsBold,
        fontSize: fontSize.sp,
        fontStyle: needItalics ? FontStyle.italic : FontStyle.normal,
        fontWeight: fontWeight ?? FontWeight.bold,
        color: color ?? KConstantColors.whiteColor);
  }

  static kRegular(BuildContext context, double fontSize,
      [Color? color,
      bool needItalics = false,
      FontWeight? fontWeight,
      bool needUnderline = false]) {
    return TextStyle(
        decoration: needUnderline ? TextDecoration.underline : null,
        fontFamily: KConstantFonts.poppinsRegular,
        fontSize: fontSize.sp,
        fontStyle: needItalics ? FontStyle.italic : FontStyle.normal,
        color: KConstantColors.whiteColor);
  }

  static kLight(BuildContext context, double fontSize,
      [Color? color, bool needItalics = false, FontWeight? fontWeight]) {
    return TextStyle(
        fontFamily: KConstantFonts.poppinsLight,
        fontSize: fontSize.sp,
        fontStyle: needItalics ? FontStyle.italic : FontStyle.normal,
        color: color ?? KConstantColors.whiteColor);
  }

  static kSemiBold(BuildContext context, double fontSize,
      [Color? color,
      bool needItalics = false,
      FontWeight? fontWeight,
      bool needUnderline = false]) {
    return TextStyle(
        decoration: needUnderline ? TextDecoration.underline : null,
        fontFamily: KConstantFonts.poppinsSemiBold,
        fontSize: fontSize.sp,
        fontStyle: needItalics ? FontStyle.italic : FontStyle.normal,
        color: KConstantColors.whiteColor);
  }

  static kMedium(BuildContext context, double fontSize,
      [Color? color, bool isItalic = false, FontWeight? fontWeight]) {
    return TextStyle(
        fontWeight: fontWeight,
        fontStyle: isItalic ? FontStyle.italic : FontStyle.normal,
        fontFamily: KConstantFonts.poppinsMedium,
        fontSize: fontSize.sp,
        color: color ?? KConstantColors.whiteColor);
  }
}
