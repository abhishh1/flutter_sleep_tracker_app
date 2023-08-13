import 'package:flutter/material.dart';

import '../../app/shared/colors.dart';

class CustomContainerDecoration {
  static kRadius({required Color? color, required double? borderRadius}) {
    return BoxDecoration(
        color: color ?? KConstantColors.bgColorFaint,
        borderRadius: BorderRadius.circular(borderRadius ?? 12));
  }
}
