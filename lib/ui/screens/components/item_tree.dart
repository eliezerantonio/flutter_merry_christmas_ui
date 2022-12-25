import 'package:flutter/material.dart';
import 'package:flutter_responsivity_widget/flutter_responsivity_widget.dart';
import 'package:lottie/lottie.dart';

class ItemTree extends StatelessWidget {
  const ItemTree({super.key});

  @override
  Widget build(BuildContext context) {
    final responsive = Responsive(context);
    return Positioned(
      right: responsive.wp(-1.5),
      top: responsive.wp(10),
      child: Lottie.asset(
        'assets/tree.json',
        
        width: responsive.dp(30),
      ),
    );
  }
}
