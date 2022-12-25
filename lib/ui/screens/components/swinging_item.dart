
import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_responsivity_widget/flutter_responsivity_widget.dart';
import 'package:lottie/lottie.dart';

class SwingingItem extends StatelessWidget {
  const SwingingItem({super.key});

 

  @override
  Widget build(BuildContext context) {
      final responsive = Responsive(context);
    return Positioned(
      top: 0,
      left: 0,
      child: FadeInDown(
        delay: const Duration(milliseconds: 3700),
        child: Lottie.asset(
          'assets/swinging.json',
          width: responsive.dp(10),
        ),
      ),
    );
  }
}