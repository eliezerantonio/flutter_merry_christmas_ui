import 'package:flutter/material.dart';
import 'package:flutter_responsivity_widget/flutter_responsivity_widget.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lottie/lottie.dart';
import 'package:animate_do/animate_do.dart';
import 'package:snowfall/snowfall/snowfall_widget.dart';

import 'components/components.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool bye = false;
  @override
  Widget build(BuildContext context) {
   final responsive = Responsive(context);
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          bye = !bye;
          setState(() {});
        },
        child: SnowfallWidget(
          alpha: 70,
          child: SizedBox(
            width: responsive.wp(100),
            height: responsive.hp(100),
            child: Stack(
              alignment: Alignment.center,
              children: [
                BordedItem(),
                const ItemTree(),
                const ContentItem(),
                BordedByeItem(
                  bye: bye,
                ),
                if (bye)
                  SwingingItem(),
                if (bye)
                  ChimesItem(),
                if (bye) const DonutItem(),
                if (bye) const AnimatedTextItem()
              ],
            ),
          ),
        ),
      ),
    );
  }
}

