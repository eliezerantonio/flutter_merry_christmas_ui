

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class AnimatedTextItem extends StatefulWidget {
  const AnimatedTextItem({
    Key? key,
  }) : super(key: key);

  @override
  State<AnimatedTextItem> createState() => _AnimatedTextItemState();
}

class _AnimatedTextItemState extends State<AnimatedTextItem> {
  bool animate = false;
  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(milliseconds: 4900), () {
      animate = true;
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return FadeInDown(
      delay: const Duration(milliseconds: 4900),
      child: Lottie.asset(
        'assets/happy-holidays.json',
        animate: animate,
        width: 350,
        height: 300,
        repeat: true,
      ),
    );
  }
}
