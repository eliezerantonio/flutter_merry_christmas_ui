
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_responsivity_widget/flutter_responsivity_widget.dart';

class BordedItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final responsive = Responsive(context);
    return Positioned(
      right: responsive.wp(-15),
      top: responsive.wp(2),
      child: Transform.rotate(
        angle: pi / 3,
        child: Container(
          height: responsive.hp(100),
          width: responsive.wp(60),
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(160),
                topLeft: Radius.circular(160),
              )),
        ),
      ),
    );
  }
}
