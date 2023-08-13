import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import '../../app/shared/colors.dart';

class CustomHorizontalMiniShimmer extends StatelessWidget {
  const CustomHorizontalMiniShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    Widget itemBlock() {
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(26)),
          child: Row(
            children: [
              Column(
                children: [
                  Container(
                    width: 320,
                    height: 50,
                    decoration: BoxDecoration(
                        color: KConstantColors.blueColor,
                        borderRadius: BorderRadius.circular(12)),
                  ),
                ],
              )
            ],
          ),
        ),
      );
    }

    return Shimmer.fromColors(
        baseColor: KConstantColors.bgColorFaint,
        highlightColor: KConstantColors.dimWhite,
        child: MediaQuery.removePadding(
            removeTop: true,
            context: context,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: 5,
                itemBuilder: (context, index) {
                  return itemBlock();
                })));
  }
}
