import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_responsivity_widget/flutter_responsivity_widget.dart';

class BordedByeItem extends StatefulWidget {
  final bool bye;

  const BordedByeItem({super.key, required this.bye});
  @override
  State<BordedByeItem> createState() => _BordedByeItemState();
}

class _BordedByeItemState extends State<BordedByeItem> {
  @override
  Widget build(BuildContext context) {
    final responsive = Responsive(context);
    return Positioned(
      right: responsive.wp(!widget.bye ? -70 : 0),
      top: responsive.wp(!widget.bye ? 2 : 0),
      child: Transform.rotate(
        angle: !widget.bye ? (pi / 3 ): 0,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 3000),
          height: responsive.hp(100),
          width: responsive.wp(!widget .bye? 60 : 100),
          decoration:  BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(!widget.bye?160:0),
                topLeft: Radius.circular(!widget.bye?160:0),
              )),
        ),
      ),
    );
  }
}
