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

class SwingingItem extends StatelessWidget {
 

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

class ContentItem extends StatelessWidget {
  const ContentItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final responsive = Responsive(context);
    return Padding(
      padding: const EdgeInsets.all(60.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ItemMenu(responsive: responsive),
          const SizedBox(height: 70),
          const Text('merry christmas',
              style: TextStyle(color: Colors.white, fontSize: 32)),
          const SizedBox(height: 70),
          const Text('Welcome to our site',
              style: TextStyle(
                  color: Colors.white70,
                  fontSize: 17,
                  fontWeight: FontWeight.w300)),
          const SizedBox(height: 10),
          const Text(
              'Being with family and friends is the most valuable Christmas \ngift ever! Happy Holidays everyone.',
              style: TextStyle(color: Colors.white70, fontSize: 12)),
          const SizedBox(height: 70),
          const Text('2022-12-25',
              style: TextStyle(
                  color: Colors.white70,
                  fontSize: 17,
                  fontWeight: FontWeight.w300)),
          const SizedBox(height: 10),
          const Text(
              'To live is to accept each minute as a miracle that cannot be repeated.',
              style: TextStyle(color: Colors.white70, fontSize: 12)),
          const SizedBox(height: 40),
          const ItemReadMore(),
          const SizedBox(height: 60),
        ],
      ),
    );
  }
}

class ItemMenu extends StatelessWidget {
  const ItemMenu({
    Key? key,
    required this.responsive,
  }) : super(key: key);

  final Responsive responsive;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
            height: 40,
            width: 80,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                border: Border.all(color: Colors.white70)),
            child: Text('Home'.toUpperCase(),
                style: const TextStyle(color: Colors.white70))),
        SizedBox(width: responsive.wp(5)),
        Text('About'.toUpperCase(),
            style: const TextStyle(color: Colors.white)),
        SizedBox(width: responsive.wp(5)),
        Text('Products'.toUpperCase(),
            style: const TextStyle(color: Colors.white)),
        SizedBox(width: responsive.wp(5)),
        Text('Contacts'.toUpperCase(),
            style: const TextStyle(color: Colors.white)),
        SizedBox(width: responsive.wp(5)),
        const EmailIcon(),
        const Spacer(),
        const LoginButton()
      ],
    );
  }
}

class EmailIcon extends StatelessWidget {
  const EmailIcon({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 40,
        width: 40,
        decoration:
            const BoxDecoration(color: Colors.white, shape: BoxShape.circle),
        child: const Icon(Icons.email, color: Color(0xff2A509A)));
  }
}

class LoginButton extends StatelessWidget {
  const LoginButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {},
      style: ButtonStyle(
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
          ),
          side: MaterialStateProperty.all(
              const BorderSide(color: Color(0xff2A509A))),
          minimumSize: MaterialStateProperty.all(const Size(60, 45))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Icon(Icons.person, color: Color(0xff2A509A)),
          const SizedBox(width: 10),
          Text('Login'.toUpperCase(),
              style: const TextStyle(color: Color(0xff2A509A))),
        ],
      ),
    );
  }
}
