
import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DonutItem extends StatefulWidget {
  const DonutItem({
    Key? key,
  }) : super(key: key);

  @override
  State<DonutItem> createState() => _DonutItemState();
}

class _DonutItemState extends State<DonutItem> {
   bool show = true;
  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(milliseconds: 3000), () {
      show = false;
      setState(() {});
    });
  }
  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      child: AnimatedOpacity(
        opacity: show?1:0,
        duration: const Duration(milliseconds: 1000),
        child: FadeInUp(
          child: SvgPicture.asset(
            'assets/donut.svg',
            semanticsLabel: 'people',
            width: 350,
            height: 300,
          ),
        ),
      ),
    );
  }
}