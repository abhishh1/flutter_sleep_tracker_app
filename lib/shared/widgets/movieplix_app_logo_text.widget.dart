import 'package:flutter/material.dart';

import '../../app/shared/text_styles.dart';

class GrockitLogo extends StatelessWidget {
  const GrockitLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child:
          Text("Tinder clone 🥕", style: KCustomTextStyle.kLight(context, 6)),
    );
  }
}
