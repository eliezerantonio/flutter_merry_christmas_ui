
import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_responsivity_widget/flutter_responsivity_widget.dart';
import 'package:lottie/lottie.dart';

class ChimesItem extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
     final responsive = Responsive(context);
    return Positioned(
      top: 0,
      right: 10,
      child: FadeInDown(
        delay: const Duration(milliseconds: 2520),
        child: Lottie.asset(
          'assets/wind-chimes.json',
          width: responsive.dp(25),
        ),
      ),
    );
  }
}
